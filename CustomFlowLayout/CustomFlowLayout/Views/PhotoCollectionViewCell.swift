//
//  PhotoCollectionViewCell.swift
//  CustomFlowLayout
//
//  Created by DuyDo on 8/23/19.
//  Copyright © 2019 vti. All rights reserved.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var containView: UIView!
    
    @IBOutlet weak var imgPhoto: UIImageView!
    
    func setCorner(){
        containView.layer.cornerRadius = 10
        containView.layer.masksToBounds = true
    }

}
