//
//  MoviesDetailViewController.swift
//  KMovies
//
//  Created by Jason Hsu on 2018/8/15.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class MoviesDetailViewController: UIViewController {
    
    var detail: Movies?

    @IBOutlet weak var moviesImageView: UIImageView!
    @IBOutlet weak var storyLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let detail = detail {
            moviesImageView.image = UIImage(named: detail.image!)
            storyLabel.text = detail.story
        }
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        if let moviesPhotosViewController = segue.destination as? MoviesPhotosViewController {
            
            moviesPhotosViewController.photoCollection = detail?.photos as? [String]
        }
    }
    

}
