//
//  app_colors.swift
//  SIM App
//
//  Created by Naina Maharjan on 19/05/2024.
//
import SwiftUI


struct AppColors {
    
    static let shared = AppColors()
    private init() { }
    static var scaffoldColor = Color(hex: "#F1F5F9")
    static var primaryColor = Color(hex: "#1268B1")
    static var whiteColor = Color.white
    static var borderColor = Color(hex: "#D7E6F9")
    
    static var lightGrey = Color(hex: "#D3D5D6")
    static var chipColor = Color(hex: "#E7F0F7")
    static var lightTextColor = Color(hex: "#5B778F")
    static var sliderDotColor = Color(hex: "#F88383")
    static var sliderUnselectedDotColor = Color(hex: "#CDCDCD")
    
    static var dimGrayColor = Color(hex: "#60666B")
    static var dimGrayColorHexCode = "#60666B"
    
    static var blackColor = Color (hex: "#000000")
    /// field color
    static var fieldColor = Color (hex: "#F6F6F6")
    
    /// Bottom sheet
   
    // MARK: Headline Text Color
    
    
    static var bodyTextColorHexCode = "#324C6B"
    
    
    // MARK: Title Text Color
    static var titleTextColor = Color(hex: "#151B23")
    static var titleTextSecondaryColor = Color(hex: "#0D1319")
    static var titleTextTertiaryColor = Color (hex: "#232629")
    
    //MARK:  Body  Text color
    static var bodyTextTertiaryColor = Color(hex: "#798CA3")
    static var bodyTextColor = Color(hex: "#324C6B")
    
    static var bodyTextSecondaryColor = Color(hex: "#91929B")
    
    // MARK: Divider color
    static var dividerColor = Color(hex: "#D4D4D4")
    
    // MARK: Pending and approved color
    static var pendingStatusTextColor = Color(hex: "#E87C4E")
    static var approvedStatusTextColor = Color(hex: "#1AA359")
    
    
    //
    static var paleSilverColor = Color(hex: "#EFF1F2")
    
    // Menu Drawer Background color
    static var menuDrawerBackgroundColor = Color(hex: "#FAFBFD")
    
    // Bottom tab bar unselected color
    static var unselectedTabBarColor = Color(hex: "#999C9F")
    /// unselected notification color
    static var unselectedNotificationColor = Color(hex: "#F8F8F9")
    static var orangeRedColor = Color(hex:"#F24E1E")
    
    static var veryLightBlue = Color(hex: "#F0F7FF")
    static var lightGrayishBlue = Color(hex: "#D5DEE6")
    static var darkBlue = Color(hex: "#273C54")
    static var lightDarkBlue = Color(hex: "#5F7691")
    static var mediumGray = Color(hex:"#8B8688")
    static var veryLignGray = Color(hex: "#D9D9D9")
    static var grayDividerColor = Color(hex:"#EBEBEB")
    
    static var greenColor = Color(hex: "#1AA359")
    
    static var loginButtonColor = Color(hex: "#D99595")
    static var createAccountButtonColor = Color(hex: "#EDAD00")
    static var loginButtonTextColor = Color(hex: "#A26060")
    
    static var textFieldColor = Color(hex: "#A26060")
    
    static var textFieldTextColor = Color(hex: "#A26060")
    static var doneBtnTextColor = Color(hex: "#7C7B7B")
    
    
    static var workOutGridColor = Color(hex: "#2E333E")
    
    
}


extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}


extension UIColor {
    convenience init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = CGFloat((rgb >> 16) & 0xFF) / 255.0
        let greenValue = CGFloat((rgb >> 8) & 0xFF) / 255.0
        let blueValue = CGFloat(rgb & 0xFF) / 255.0
        
        self.init(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
    }
}

