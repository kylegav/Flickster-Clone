//
//  MovieDetailsViewController.swift
//  busan.ios
//
//  Created by Kyle Gavin on 7/31/22.
//

import UIKit
import AlamofireImage


class MovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var backdrop: UIImageView!

    @IBOutlet weak var poster: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var descLabel: UILabel!
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        
        descLabel.text = movie["overview"] as? String
        descLabel.sizeToFit()
        
        
        let posterPath = movie["poster_path"] as! String
        
        let posterUrl = URL(string: "https://image.tmdb.org/t/p/w185" + posterPath)
        
        poster.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        
        backdrop.af.setImage(withURL: backdropUrl!)

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
