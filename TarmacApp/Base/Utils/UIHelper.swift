//
//  ui_helper.swift
//  SIM App
//
//  Created by Naina Maharjan on 21/05/2024.
//
import SwiftUI

final class UIHelper {
    static let shared = UIHelper()
    
    // Screen dimensions
    static var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }
    
    static var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    private init() {} // Private initializer to ensure it remains a singleton
    
    // Predefined vertical spaces
    
    static var verticalXXXXLarge: CGFloat{
        return screenHeight * 0.5
    }
    
    static var verticalXXXLarge: CGFloat{
        return screenHeight * 0.4
    }
    
    static var verticalXXLarge: CGFloat{
        return screenHeight * 0.3
    }
    
    static var verticalXLarge: CGFloat{
        return screenHeight * 0.2
    }
    
    static var verticalLarge: CGFloat {
        return screenHeight * 0.1
    }
    
    static var verticalMedium: CGFloat {
        return screenHeight * 0.09
    }
    
    static var verticalXMedium: CGFloat {
        return screenHeight * 0.075
    }
    
    static var verticalXXMedium: CGFloat {
        return screenHeight * 0.050
    }
    
    static var verticalSmall: CGFloat {
        return screenHeight * 0.025
    }

    static var verticalXSmall: CGFloat {
        return screenHeight * 0.015
    }
    
    static var verticalXXSmall: CGFloat {
        return screenHeight * 0.01
    }
    
    static var verticalXXXSmall: CGFloat {
        return screenHeight * 0.005
    }
    
    // Predefined horizontal spaces
    
    static var horizontalXXXLarge: CGFloat{
        return screenWidth * 0.25
    }
    
    static var horizontalXXLarge: CGFloat{
        return screenWidth * 0.2
    }
    
    static var horizontalXLarge: CGFloat{
        return screenWidth * 0.15
    }
    static var horizontalLarge: CGFloat {
        return screenWidth * 0.1
    }
    
    static var horizontalMedium: CGFloat {
        return screenWidth * 0.05
    }
    
    static var horizontalXMedium: CGFloat {
        return screenWidth * 0.075
    }
    
    static var horizontalXXMedium: CGFloat {
        return screenWidth * 0.09
    }
    
    static var horizontalSmall: CGFloat {
        return screenWidth * 0.025
    }
    
    static var horizontalXSmall: CGFloat {
        return screenWidth * 0.015
    }
    
    static var horizontalXXSmall: CGFloat {
        return screenWidth * 0.01
    }
}

// Screen dimensions
 var screenHeight: CGFloat {
    return UIScreen.main.bounds.height
}

 var screenWidth: CGFloat {
    return UIScreen.main.bounds.width
}

// VerticalSpace view
struct VerticalSpace: View {
    var size: CGFloat

    var body: some View {
        Spacer()
            .frame(height: size)
    }
}

// HorizontalSpace view
struct HorizontalSpace: View {
    var size: CGFloat

    var body: some View {
        Spacer()
            .frame(width: size)
    }
}

