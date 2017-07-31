//
//  ADSignupViewController.swift
//  AppDuplicator2
//
//  Created by iMokhles on 30/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation

class ADSignupViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var mainTableView: UITableView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        mainTableView.reloadData()
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ADTextFieldCell") as! ADTextFieldCell
        
        
        if indexPath.section == 0 {
            cell.cellFieldType = 5
            cell.setup(placeholder: "Enter your username")
        } else if indexPath.section == 1 {
            cell.cellFieldType = 0
            cell.setup(placeholder: "Enter your email")
        } else if indexPath.section == 2 {
            cell.cellFieldType = 4
            cell.setup(placeholder: "Enter your password")
        } else if indexPath.section == 3 {
            cell.cellFieldType = 4
            cell.setup(placeholder: "Confirm your password")
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40.0;
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
    }
}
