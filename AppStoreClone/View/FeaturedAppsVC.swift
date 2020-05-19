//
//  ViewController.swift
//  AppStoreClone
//
//  Created by Amith Kumar Narayan on 07/05/2020.
//  Copyright © 2020 Narayan inc. All rights reserved.
//

import UIKit

class FeaturedAppsVC: UICollectionViewController, UICollectionViewDelegateFlowLayout{

    private let cellID = "collectionViewCellID"
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "zzzz"
        self.navigationController?.navigationBar.backgroundColor = .white
//        collectionView.backgroundColor = .red
        
        collectionView.register(CategoryCell.self, forCellWithReuseIdentifier: cellID)
        
    }

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! CategoryCell
        return cell
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
}

