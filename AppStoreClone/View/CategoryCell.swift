//
//  CategoryCell.swift
//  AppStoreClone
//
//  Created by Amith Kumar Narayan on 08/05/2020.
//  Copyright © 2020 Narayan inc. All rights reserved.
//

import Foundation
import UIKit

class CategoryCell : UICollectionViewCell {
    
    private let appViewCellID = "appCellID"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewSetUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let appColletionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.red
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    
    func viewSetUp() {
        backgroundColor = .blue
        addSubview(appColletionView)
        
        appColletionView.register(AppCell.self, forCellWithReuseIdentifier: appViewCellID)
        
        appColletionView.delegate = self
        appColletionView.dataSource = self
        
        var constraintList :[NSLayoutConstraint] = []
        constraintList.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : appColletionView]))
        constraintList.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : appColletionView]))
        for constraint in constraintList {
            addConstraint(constraint)
        }
//        addConstraint(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : appColletionView]))
    }
}
//MARK:- Delegate and Datasource methods
extension CategoryCell : UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 30
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCell(withReuseIdentifier: appViewCellID, for: indexPath)
    }
    
    
}
