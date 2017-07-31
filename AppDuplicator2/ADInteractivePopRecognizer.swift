//
//  ADInteractivePopRecognizer.swift
//  AppDuplicator2
//
//  Created by iMokhles on 31/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation

class ADInteractivePopRecognizer: NSObject {
    
    // MARK: - Properties
    
    fileprivate weak var navigationController: UINavigationController?
    
    // MARK: - Init
    
    init(controller: UINavigationController) {
        self.navigationController = controller
        
        super.init()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
}

extension ADInteractivePopRecognizer: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return (navigationController?.viewControllers.count ?? 0) > 1
    }
    
    // This is necessary because without it, subviews of your top controller can cancel out your gesture recognizer on the edge.
    func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}
