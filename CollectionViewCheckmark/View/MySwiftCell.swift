//
//  MyCell.swift
//  CollectionViewCheckmark
//
//  Created by Mihail Șalari on 8/23/16.
//  Copyright © 2016 Andrej Mihajlov. All rights reserved.
//

import UIKit

class MySwiftCell: UICollectionViewCell {
    
    // MARK: - Properties
    
    @IBOutlet weak var checkBoxImageView: UIImageView!
    
    var isChecked: Bool = false {
        didSet {
            if isChecked {
                self.checkBoxImageView.image = UIImage(named: "Checked")
            } else {
                self.checkBoxImageView.image = UIImage(named: "Unchecked")
            }
        }
    }
}
