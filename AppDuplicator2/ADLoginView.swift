//
//  ADLoginView.swift
//  AppDuplicator2
//
//  Created by iMokhles on 21/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class ADLoginView: UIView {
    
    // MARK: - properties
    fileprivate let nibName = "ADLoginView"
    
    class func instanceFromNib() -> ADLoginView {
        return UINib(nibName: "ADLoginView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! ADLoginView
    }
    public func setup() {
        layer.cornerRadius = 20
        clipsToBounds = true
        layer.masksToBounds = false

        layer.shadowRadius = 15
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0.0, height: 5.0)
        layer.shadowOpacity = 0.65
    }
}
