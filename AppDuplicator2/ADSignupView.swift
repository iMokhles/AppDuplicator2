//
//  ADSignupView.swift
//  AppDuplicator2
//
//  Created by iMokhles on 21/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

class ADSignupView: UIView, UITableViewDelegate, UITableViewDataSource {
    
    // MARK: - properties
    fileprivate let nibName = "ADSignupView"
    
    @IBOutlet var mainTableView: UITableView!
    class func instanceFromNib() -> ADSignupView {
        return UINib(nibName: "ADSignupView", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! ADSignupView
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
    
    override func layoutSubviews() {
        super.layoutSubviews()
        mainTableView.register(UINib(nibName: "ADTextFieldCell", bundle: nil), forCellReuseIdentifier: "ADTextFieldCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ADTextFieldCell", for: indexPath) as! ADTextFieldCell
        if indexPath.section == 0 {
            cell.cellFieldType = 5
        } else if indexPath.section == 1 {
            cell.cellFieldType = 0
        } else if indexPath.section == 2 {
            cell.cellFieldType = 4
        } else if indexPath.section == 3 {
            cell.cellFieldType = 4
        }
        cell.setup()
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 61.0;
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
}
