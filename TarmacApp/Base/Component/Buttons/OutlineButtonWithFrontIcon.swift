//
//  OutlineButtonWithFrontIcon.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import Foundation
import SwiftUI

struct OutlineButtonWithFrontIcon: View {
    // Define properties for the button customization
    let onTapButton: () -> Void
    let buttonName: String
    let iconImage: String
    let buttonFontSize: FontSize
    let fontWeight: FontWeight
    let maxWidth: CGFloat
    let maxHeight: CGFloat
    let padding: Edge.Set
    let paddingValue: CGFloat
    let foreGroundColor: Color
    let backgroundColor: Color
    let cornerRadius: CGFloat
    let borderColor: Color
    let textColor: Color
    
    // Initialize the PrimaryButton with default values for optional parameters
    init(buttonName: String, onTapButton: @escaping () -> Void,
         icon: String,
         maxWidth: CGFloat = 385, maxHeight: CGFloat = 50, padding: Edge.Set = .horizontal, foreGroundColor: Color = AppColors.primaryColor, backgroundColor: Color = AppColors.primaryColor, fontWeight: FontWeight = .w400, fontSize: FontSize = .xsmall, cornerRadius: CGFloat = 25, paddingValue: CGFloat = 10,
         borderColor : Color = AppColors.borderColor,
         textColor: Color = AppColors.primaryColor
    ) {
        self.buttonName = buttonName
        self.onTapButton = onTapButton
        self.iconImage = icon
        self.maxWidth = maxWidth
        self.maxHeight = maxHeight
        self.padding = padding
        self.paddingValue = paddingValue
        self.foreGroundColor = foreGroundColor
        self.backgroundColor = backgroundColor
        self.buttonFontSize = fontSize
        self.fontWeight = fontWeight
        self.cornerRadius = cornerRadius
        self.borderColor = borderColor
        self.textColor = textColor
    }
    
    // Define the body of the button with the specified properties
    var body: some View {
        Button(action: {
            onTapButton()
        }, label: {
            // Customize the button label with BaseBodyText
            HStack{
                Image(systemName: iconImage)
                BaseBodyText(content: buttonName, fontFamily: .dmSans, fontSize: buttonFontSize, fontWeight: fontWeight , textColor: textColor).padding(10)
                    // Set the frame dimensions
            } .frame(maxWidth: maxWidth, maxHeight: maxHeight)
        })
       .padding(padding, paddingValue) // Apply padding to the button
       
        .foregroundColor(foreGroundColor) // Set the foreground color
       
        
        .background() // Set the background color
        .controlSize(.mini)
        .addBorder(borderColor, cornerRadius:cornerRadius)
    }
}

#Preview {
    // Provide a preview for the PrimaryButton with specific parameters
    OutlineButtonWithFrontIcon(
         
        buttonName: "Outline Button", onTapButton: {
        debugPrint("Clicked")
    },icon: "person",
        padding: .horizontal,foreGroundColor: AppColors.primaryColor, backgroundColor: AppColors.whiteColor , cornerRadius: 25)
                  
}
