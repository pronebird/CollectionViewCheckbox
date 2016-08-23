//
//  CheckboxViewController.swift
//  CollectionViewCheckmark
//
//  Created by Mihail Șalari on 8/23/16.
//  Copyright © 2016 Andrej Mihajlov. All rights reserved.
//

import UIKit

private let reuseIdentifier = "SwiftCell"

class CheckboxViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    // MARK: - Properties
    
    var checkedIndexPath  = Set<IndexPath>()  //= NSMutableSet()
    
   
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 40
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! MySwiftCell
    
        // Configure the cell
        cell.backgroundColor = UIColor.random
        cell.isChecked = self.checkedIndexPath.contains(indexPath)
        
        return cell
    }

    // MARK: - UICollectionViewDelegate
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.collectionView?.deselectItem(at: indexPath, animated: true)
        
        let cell = collectionView.cellForItem(at: indexPath) as! MySwiftCell
        
        if self.checkedIndexPath.contains(indexPath) {
            self.checkedIndexPath.remove(indexPath)
            cell.isChecked = false
            
        } else {
            self.checkedIndexPath.insert(indexPath)
            cell.isChecked = true
        }
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 78, height: 78)
    }
    
}
