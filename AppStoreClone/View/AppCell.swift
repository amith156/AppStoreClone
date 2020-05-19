//
//  AppCell.swift
//  AppStoreClone
//
//  Created by Amith Kumar Narayan on 19/05/2020.
//  Copyright © 2020 Narayan inc. All rights reserved.
//

import Foundation
import UIKit
class AppCell : UICollectionViewCell{
    override init(frame: CGRect) {
        super.init(frame: frame)
        viewSetUp()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func viewSetUp() {
        backgroundColor = UIColor.white
    }
}
