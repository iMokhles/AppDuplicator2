//
//  ADHelper.swift
//  AppDuplicator2
//
//  Created by iMokhles on 21/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation

class ADHelper : NSObject {
    
    class func getMainStoryboard() -> UIStoryboard {
        return UIStoryboard.init(name: "Main", bundle: nil)
    }
    class func getViewControllerWithId(name: String) -> Any {
        return ADHelper.getMainStoryboard().instantiateViewController(withIdentifier:name)
    }
}
