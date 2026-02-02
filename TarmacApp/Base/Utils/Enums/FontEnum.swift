//
//  font_name_enum.swift
//  SIM App
//
//  Created by Rajan Maharjan on 19/05/2024.
//

import SwiftUI

enum FontName {
    case dmSans
    case inter
    
    var name: String{
        switch self{
        case .dmSans: return "dm_sans_variable_font"
        case .inter: return "Inter-Black"
        }
    }
}
enum FontSize: CGFloat {
    case xxxxlarge = 80
    case xxxlarge = 65
    case xxlarge = 50
    case xlarge = 35
    case large = 30
    case xxmedium = 28
    case xmedium = 26
    case medium = 24
    case small = 20
    case xsmall = 18
    case xxsmall = 16
    case xxxsmall = 14
    case xlsmall = 12
   
    
    func scaledFontSize(customSize: Int? = nil) -> CGFloat {
           let screenHeight = UIScreen.main.bounds.height
           let baseHeight: CGFloat = 812 // iPhone 11 Pro height as base reference
           let scaleFactor = screenHeight / baseHeight
           let size = customSize != nil ? CGFloat(customSize!) : self.rawValue
           return size * scaleFactor
       }
}
