//
//  main_theme.swift
//  SIM App
//
//  Created by Rajan Maharjan on 17/05/2024.
//

import SwiftUI

enum FontFamily {
    case inter
    case dmSans
}


enum FontWeight: String {
    case w100 = "Thin"
    case w200 = "ExtraLight"
    case w300 = "Light"
    case w400 = "Regular"
    case w500 = "Medium"
    case w600 = "SemiBold"
    case w700 = "Bold"
    case w800 = "ExtraBold"
    case w900 = "Black"
    
    var fontName: String {
        return self.rawValue
    }
}
extension Font {
    static func customFont(family: FontFamily, weight: FontWeight = .w100, size: FontSize = .small) -> Font {
        let fontName: String
        switch family {
        case .inter:
            fontName = "Inter-\(weight.fontName)"
        case .dmSans:
            fontName = "DMSans-\(weight.fontName)"
        }
        return Font.custom(fontName, size: size.rawValue)
    }
}

// Extend UIFont to add a method for custom fonts
extension UIFont {
    static func customFont(family: FontFamily, weight: FontWeight = .w100, size: FontSize = .small) -> UIFont? {
        let fontName: String
        switch family {
        case .inter:
            fontName = "Inter-\(weight.rawValue)"
        case .dmSans:
            fontName = "DMSans-\(weight.rawValue)"
        }
        return UIFont(name: fontName, size: size.rawValue)
    }
}




