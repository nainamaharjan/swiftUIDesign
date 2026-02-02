//
//  validators.swift
//  SIM App
//
//  Created by Naina Maharjan on 20/05/2024.
//

import Foundation
//
//protocol ValidatorProtocol{
//    func validate(value: String , validationMessage: String) ->String?
//}
//
//struct TextFieldModel{
//    var value: String
//    var error: String?
//    var textField: TextFieldType
//
//    init(value: String, error: String? = nil, textField: TextFieldType) {
//        self.value = value
//        self.error = error
//        self.textField = textField
//    }
//    mutating func onValidate(errorMessage: String) -> Bool{
//        error = textField.validate(value: value, validationMessage:errorMessage)
//        return error == nil
//    }
//    mutating func onSubmitError(){
//        error = textField.validate(value: value, validationMessage: "")
//    }
//}
//
//
//
//
//enum TextFieldType: ValidatorProtocol{
//
//    case email
//    case password
//
//
//    func validate(value: String, validationMessage: String) -> String? {
//        switch self {
//        case .email:
//            return emailValidate(value: value, error:validationMessage)
//        case .password :
//            return passwordValidate(value: value, error:validationMessage)
//        }
//    }
//
//     func emailValidate(value: String , error: String) -> String? {
//        if value.isEmpty{
//            return error
//        }
//        else{
//            let emailRegx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
//            let emailPred = NSPredicate(format: "SELF MATCHES %@", emailRegx)
//            return emailPred.evaluate(with: value) ? nil : "Please enter your valid email"
//        }
//    }
//
//    private func passwordValidate(value: String, error: String) -> String?{
//        if value.isEmpty{
//             return "Please enter password"
//        }else{
//            return nil
//        }
//    }
//
//}
//
//class FormValidator {
//    func validateName(_ value: String) -> Bool {
//        if value.count < 2 || value.count > 30 {
//            return false
//        }
//        return true
//    }
//
//    func validateLastName(_ value: String) -> Bool {
//        if value.count < 2 || value.count > 30 {
//            return false
//        }
//        return true
//    }
//
//    func validateEmail(_ value: String) -> Bool {
//        if value.isEmpty{
//            return false
//        }
//        else{
//            return true
//        }
//    }
//
//    func validatePassword(_ value: String) -> Bool {
//        if value.count < 8 ||   value.count > 16 {
//            return false
//        }
//        return true
//    }
//}



class Validator {
    
    static func validateEmpty(_ text: String) -> String? {
        return !text.isEmpty ? nil : "This field must not empty."
    }
    
    
    
    
    static func validatePhoneNumber(_ phoneNumber: String) -> String? {
        if phoneNumber.isEmpty {
            return "Phone number cannot be empty"
        }
        //        if phoneNumber.count <= 7 {
        
        //            return "Phone number format is invalid"
        //        }
        if !phoneNumber.allSatisfy({ $0.isNumber }) {
            return "Phone number must contain only digits"
        }
        
        // Regular expression pattern
        let regexPattern = "^[1-9][0-9\\-().]{7,32}$"
        let regex = try? NSRegularExpression(pattern: regexPattern)
        let range = NSRange(location: 0, length: phoneNumber.utf16.count)
        
        if let regex = regex {
            let match = regex.firstMatch(in: phoneNumber, options: [], range: range)
            if match == nil {
                return "Phone number format is invalid"
            }
        } else {
            return "Failed to create regex"
        }
        
        return nil
    }
    
    static func validateEmail(_ email: String) -> String? {
        if email.isEmpty {
            return "Email cannot be empty"
        }
        let isEmailValid = checkForValidEmail(email)
        if  isEmailValid == false{
            return "Invalid email address"
        }
        return nil
    }
    
    static func checkForValidEmail(_ email: String) -> Bool {
        let emailRegex = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
        let emailPredicate = NSPredicate(format:"SELF MATCHES %@", emailRegex)
        return emailPredicate.evaluate(with: email)
    }
    
    static func isPhoneNumberValid(_ phoneNumber: String) -> Bool {
        return validatePhoneNumber(phoneNumber) == nil
    }
    static func isEmailValid(_ email: String) -> Bool {
        return validateEmail(email) == nil
    }
    static func isEmpty(_ text: String) ->Bool{
        return validateEmpty(text) == nil
    }
    
    static func validateFirstName(_ firstName: String) -> String? {
        if firstName.isEmpty {
            return "Name cannot be empty"
        }
        
        let isValidName = checkForValidName(firstName)
        if isValidName == false {
            return "Invalid name"
        }
        
        return nil
    }
    
    private static func checkForValidName(_ name: String) -> Bool {
        // Check if the name contains only alphabetic characters
        let allowedCharacters = CharacterSet.letters
        guard name.rangeOfCharacter(from: allowedCharacters.inverted) == nil else { return false }
        
        // Check if the name is within a valid length range
        guard name.count >= 2 && name.count <= 20 else { return false }
        
        return true
    }
}

