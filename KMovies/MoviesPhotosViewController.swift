//
//  MoviesPhotosViewController.swift
//  KMovies
//
//  Created by Jason Hsu on 2018/8/17.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class MoviesPhotosViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var photoCollection: [String]?

    let fullScreenSize = UIScreen.main.bounds.size
    
    @IBOutlet weak var moviesCollectionLayout: UICollectionViewFlowLayout!
    
    @IBOutlet weak var moviesCollectionViewControl: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(photoCollection!)
                moviesCollectionLayout.sectionInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
                //設定Cell的size
                moviesCollectionLayout.itemSize = CGSize(width: fullScreenSize.width/2-10, height: 100)
                //設定cell與cell的間距
                moviesCollectionLayout.minimumLineSpacing = 5
                moviesCollectionLayout.scrollDirection = .vertical
        
                //設定header的尺寸
                moviesCollectionLayout.headerReferenceSize = CGSize(
                    width: fullScreenSize.width, height: 40)
        
    }
    
    
    // MARK: UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photoCollection!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCell", for: indexPath) as! MoviesCollectionViewCell
        cell.moviesCellImageView.image = UIImage(named: photoCollection![indexPath.row])
        cell.backgroundColor = UIColor.cyan
        return cell
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
