//
//  MovieCell.swift
//  busan.ios
//
//  Created by Kyle Gavin on 6/5/22.
//

import UIKit

class MovieCell: UITableViewCell {

    
    @IBOutlet weak var photoLabel: UIImageView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
