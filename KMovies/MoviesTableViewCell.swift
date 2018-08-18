//
//  MoviesTableViewCell.swift
//  KMovies
//
//  Created by Jason Hsu on 2018/8/15.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class MoviesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var moviesPosterImageView: UIImageView!
    @IBOutlet weak var moviesNameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(with cellData: Movies) {
        moviesNameLabel.text = cellData.name
        typeLabel.text = cellData.type
        yearLabel.text = cellData.year
        moviesPosterImageView.image = UIImage(named: cellData.image!)
    }

}
