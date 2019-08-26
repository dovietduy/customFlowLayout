//
//  ViewController.swift
//  CustomFlowLayout
//
//  Created by DuyDo on 8/22/19.
//  Copyright © 2019 vti. All rights reserved.
//

import UIKit

class PhotoCollectionViewController: UICollectionViewController {

    var photos = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initLayout()
        initData()
    }
    
    func initData(){
        
        photos = [UIImageView(image: #imageLiteral(resourceName: "cat1")),
                  UIImageView(image:  #imageLiteral(resourceName: "cat8")),
                  UIImageView(image: #imageLiteral(resourceName: "cat7")),
                  UIImageView(image:  #imageLiteral(resourceName: "cat3")),
                  UIImageView(image: #imageLiteral(resourceName: "cat9")),
                  UIImageView(image:  #imageLiteral(resourceName: "cat4")),
                  UIImageView(image: #imageLiteral(resourceName: "cat1")),
                  UIImageView(image:  #imageLiteral(resourceName: "cat8")),
                  UIImageView(image: #imageLiteral(resourceName: "cat7"))]
    }
    
    func initLayout(){
        if let layout = self.collectionView?.collectionViewLayout as? PinterestLayout {
            layout.delegate = self
        }
    }
}

extension PhotoCollectionViewController {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? PhotoCollectionViewCell
            else { return UICollectionViewCell()}
        cell.imgPhoto.image = photos[indexPath.item].image
        cell.setCorner()
        return cell
    }
}

extension PhotoCollectionViewController: PinterestLayoutDelegate{
    func collectionView(_ collectionView: UICollectionView, heightForPhotoAtIndexPath indexPath: IndexPath) -> CGFloat {
        return photos[indexPath.item].image!.size.height
    }
}
