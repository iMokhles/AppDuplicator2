//
//  ADNavigationViewController.swift
//  AppDuplicator2
//
//  Created by iMokhles on 31/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation

class ADNavigationViewController: UINavigationController {
    
    // MARK: - Properties
    
    private var popRecognizer: ADInteractivePopRecognizer?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPopRecognizer()
    }
    
    // MARK: - Setup
    
    private func setupPopRecognizer() {
        popRecognizer = ADInteractivePopRecognizer(controller: self)
    }
}
