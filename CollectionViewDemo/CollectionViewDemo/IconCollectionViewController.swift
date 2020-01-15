//
//  IconCollectionViewController.swift
//  CollectionViewDemo
//
//  Created by 2020-2 on 15/01/20.
//  Copyright © 2020 2020-2. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

private var iconSet: [Icon] = [ Icon(name: "candle", price: 3.99, isFeatured: false),
Icon(name: "cat", price: 2.99, isFeatured: true),
Icon(name: "dribbble", price: 1.99, isFeatured: false),
Icon(name: "ghost", price: 4.99, isFeatured: false),
Icon(name: "hat", price: 2.99, isFeatured: false),
Icon(name: "owl", price: 5.99, isFeatured: true),
Icon(name: "pot", price: 1.99, isFeatured: false),
Icon(name: "pumkin", price: 0.99, isFeatured: false),
Icon(name: "rip", price: 7.99, isFeatured: false),
Icon(name: "skull", price: 8.99, isFeatured: false),
Icon(name: "sky", price: 0.99, isFeatured: false),
Icon(name: "toxic", price: 2.99, isFeatured: false),
Icon(name: "ic_book", price: 2.99, isFeatured: false),
Icon(name: "ic_backpack", price: 3.99, isFeatured: false),
Icon(name: "ic_camera", price: 4.99, isFeatured: false),
Icon(name: "ic_coffee", price: 3.99, isFeatured: true),
Icon(name: "ic_glasses", price: 3.99, isFeatured: false),
Icon(name: "ic_ice_cream", price: 4.99, isFeatured: false),
Icon(name: "ic_smoking_pipe", price: 6.99, isFeatured: false),
Icon(name: "ic_vespa", price: 9.99, isFeatured: false)]

class IconCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iconSet.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! IconCollectionViewCell
        
        let icon = iconSet[indexPath.row]
        cell.iconImageView.image = UIImage(named: icon.name)
        cell.iconPriceLabel.text = "$\(icon.price)"
        
        cell.backgroundView = (icon.isFeatured) ? UIImageView(image: UIImage(named: "feature-bg")) : nil
        // Configure the cell
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
