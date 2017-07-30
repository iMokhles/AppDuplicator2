//
//  ADLaunchViewController.swift
//  AppDuplicator2
//
//  Created by iMokhles on 21/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation
import UIKit
import TGLParallaxCarousel
import DGRunkeeperSwitch
import Colours

class ADLaunchViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTheme()
        setupSegment()
        setupLoginView()
        setupSignupView()
    }
    
    func setupTheme() -> Void {
        view.backgroundColor = ADTheme.getMainBgColor()
    }
    
    func setupSegment() -> Void {
        let runkeeperSwitch = DGRunkeeperSwitch(titles: ["Login", "Signup"])
        runkeeperSwitch.backgroundColor = .white
        runkeeperSwitch.selectedBackgroundColor = ADTheme.getMainBgColor()
        runkeeperSwitch.titleColor = ADTheme.getMainBgColor()
        runkeeperSwitch.selectedTitleColor = .white
        runkeeperSwitch.titleFont = ADTheme.getMainAppMediumFont(size: 14.0)
        runkeeperSwitch.frame = CGRect(x: 30.0, y: 40.0, width: 280.0, height: 30.0)
        runkeeperSwitch.addTarget(self, action: #selector(ADLaunchViewController.changedLaunchScreen(sender:)), for: .valueChanged)
        
        runkeeperSwitch.center = CGPoint(x: view.bounds.midX, y: runkeeperSwitch.center.y)
        view.addSubview(runkeeperSwitch)
    }
    
    func changedLaunchScreen(sender: DGRunkeeperSwitch!) -> Void {
        print("\(sender.selectedIndex)")
        toggleViews(number: sender.selectedIndex)
    }
    
    func setupLoginView() -> Void {
        
        let loginView = ADLoginView.instanceFromNib()
        loginView.tag = 3456
        loginView.backgroundColor = UIColor.clear
        loginView.frame = CGRect(x: 30.0, y: 90.0, width: 300, height: UIScreen.main.bounds.size.height-100)
        loginView.center = CGPoint(x: view.bounds.midX, y: loginView.center.y)
        view.addSubview(loginView)
        loginView.alpha = 1
    }
    
    func setupSignupView() -> Void {
        let signupView = ADSignupView.instanceFromNib()
        signupView.tag = 8765
        signupView.backgroundColor = UIColor.clear
        signupView.frame = CGRect(x: 30.0, y: 90.0, width: 300, height: UIScreen.main.bounds.size.height-100)
        signupView.center = CGPoint(x: view.bounds.midX, y: signupView.center.y)
        view.addSubview(signupView)
        signupView.alpha = 0
    }
    
    func toggleViews(number: Int) -> Void {
        switch number {
        case 0:
            UIView.animate(withDuration: 0.30, delay: 0, options: .transitionFlipFromTop, animations: {
                let signupView = self.view.viewWithTag(8765) as? ADSignupView
                signupView?.alpha = 0
            }, completion: { (true) in
                let loginView = self.view.viewWithTag(3456) as? ADLoginView
                loginView?.alpha = 1
            })
            break
        case 1:
            UIView.animate(withDuration: 0.30, delay: 0, options: .transitionFlipFromTop, animations: {
                let loginView = self.view.viewWithTag(3456) as? ADLoginView
                loginView?.alpha = 0
            }, completion: { (true) in
                let signupView = self.view.viewWithTag(8765) as? ADSignupView
                signupView?.alpha = 1
            })
            break
        default:
            break
        }
    }
}
