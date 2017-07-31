//
//  ADTextFieldCell.swift
//  AppDuplicator2
//
//  Created by iMokhles on 21/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation
import UIKit

enum fieldType : Int {
    case email = 0
    case phone = 1
    case alphaNumeric = 2
    case numeric = 3
    case password = 4
    case username = 5
}

class ADTextFieldCell: UITableViewCell, UITextFieldDelegate {
    
    @IBOutlet var mainTextField: UITextField!
    @IBOutlet var validationImage: UIImageView!
    var cellFieldType: Int!
    var isValid: Bool!
    var endEditing: ((_ textField: UITextField, _ textFieldCell: ADTextFieldCell, _ valid: Bool) -> Void)?
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setup(placeholder: String) {
        self.validationImage.isHidden = true;
        layer.cornerRadius = 20
        clipsToBounds = true
        mainTextField.placeholder = placeholder
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        switch cellFieldType {
        case 0:
            // email
            isValid = ADTextHelper.isValidate(text: textField.text!, type: .email)
            break
        case 1:
            // phone
            isValid = ADTextHelper.isValidate(text: textField.text!, type: .phone)
            break
        case 2:
            // alphaNumeric
            isValid = ADTextHelper.isValidate(text: textField.text!, type: .alphaNumeric)
            break
        case 3:
            // numeric
            isValid = ADTextHelper.isValidate(text: textField.text!, type: .numeric)
            break
        case 4:
            // password
            isValid = ADTextHelper.isValidate(text: textField.text!, type: .password)
            break
        case 5:
            // username
            isValid = ADTextHelper.isValidate(text: textField.text!, type: .username)
            break
        default:
            // default
            break
        }        
        if (isValid == false) {
            self.validationImage.image = UIImage(named: "delete_sign")
            self.validationImage.isHidden = false;
        } else {
            self.validationImage.image = UIImage(named: "checkmark")
            self.validationImage.isHidden = false;
        }
        if (textField.text == "") {
            setup(placeholder: mainTextField.placeholder!)
        }
        if let callback = self.endEditing {
            callback (textField, self, isValid)
        }
    }
}
