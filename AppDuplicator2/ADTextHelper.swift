//
//  ADTextHelper.swift
//  AppDuplicator2
//
//  Created by iMokhles on 21/07/2017.
//  Copyright © 2017 iMokhles. All rights reserved.
//

import Foundation

enum validateType {
    case email
    case phone
    case alphaNumeric
    case numeric
    case password
    case username
}

public enum PatternValidatorRegex : String {
    case mail = "(^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}$)"
    case alphaNumeric = "(^[a-zA-Z0-9]*$)"
    case numeric = "(^[0-9]*$)"
    case phone = "(^[0-9+]*$)"
    case username = "^[A-Za-z0-9]{6,20}+$"
    case password = "^[a-zA-Z0-9]{6,20}+$"
}

class ADTextHelper: NSObject {
    
    class func isValidate(text: String, type: validateType) -> Bool {
        var regex: String?
        
        switch type {
        case .email:
            regex = PatternValidatorRegex.mail.rawValue
            break
        case .phone:
            regex = PatternValidatorRegex.phone.rawValue
            break
        case .username:
            regex = PatternValidatorRegex.username.rawValue
            break
        case .password:
            regex = PatternValidatorRegex.password.rawValue
            break
        case .alphaNumeric:
            regex = PatternValidatorRegex.alphaNumeric.rawValue
            break
        case .numeric:
            regex = PatternValidatorRegex.numeric.rawValue
            break
        }
        
        let predicate = NSPredicate(format:"SELF MATCHES %@", regex!)
        return predicate.evaluate(with: text)
    }
}
