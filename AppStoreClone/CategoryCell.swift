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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewSetUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let appColletionView : UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = UIColor.red
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    
    func viewSetUp() {
        backgroundColor = .blue
        addSubview(appColletionView)
        var constraintList :[NSLayoutConstraint] = []
        constraintList.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "H:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : appColletionView]))
        constraintList.append(contentsOf: NSLayoutConstraint.constraints(withVisualFormat: "V:|-8-[v0]-8-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : appColletionView]))
        
        for constraint in constraintList {
            addConstraint(constraint)
        }
//        addConstraint(NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : appColletionView]))
    }
}
