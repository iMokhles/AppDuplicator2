//
//  ADTheme.swift
//  AppDuplicator2
//
//  Created by iMokhles on 21/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation
import UIKit
import Colours

class ADTheme: NSObject {
    
    class func getMainColor() -> UIColor {
        
        return UIColor(hex: "FFFFFF")
    }
    
    class func getMainDarkColor() -> UIColor {
        
        return UIColor(hex: "1B1B1B")
    }
    
    class func getMainHighlightColor() -> UIColor {
        
        return UIColor(hex: "DE2029")
    }
    
    class func getMainBgColor() -> UIColor {
        return UIColor(hex: "2980b9")
    }
    
    class func getMainLineColor() -> UIColor {
        return UIColor(hex: "4769AE")
    }
    
    class func tableCellSelectedColor() -> UIColor {
        return self.getMainHighlightColor();
    }
    
    class func tableCellTitleColor() -> UIColor {
        return self.getMainDarkColor();
    }
    
    class func tableCellSelectedTitleColor() -> UIColor {
        return self.getMainColor();
    }
    
    class func getMainAppMediumFont(size: CGFloat) -> UIFont {
        return UIFont(name: "HelveticaNeue-Medium", size: size)!
    }
    
}
