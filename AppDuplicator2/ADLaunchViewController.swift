//
//  ADLaunchViewController.swift
//  AppDuplicator2
//
//  Created by iMokhles on 21/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation
import UIKit
import Colours

class ADLaunchViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTheme()
        
    }
    
    func setupTheme() -> Void {
//        view.backgroundColor = ADTheme.getMainBgColor()
    }
    
    @IBAction func signupTapped(_ sender: Any) {
        let signupVC = ADHelper.getViewControllerWithId(name: "SignupVC") as! ADSignupViewController
        
        self.navigationController?.pushViewController(signupVC, animated: true)
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        let loginVC = ADHelper.getViewControllerWithId(name: "LoginVC") as! ADLoginViewController
        
        self.navigationController?.pushViewController(loginVC, animated: true)
    }
    
}
