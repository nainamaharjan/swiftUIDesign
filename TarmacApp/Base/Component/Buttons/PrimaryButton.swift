//
//  Primary Button.swift
//  SIM App
//
//  Created by Rajan Maharjan on 19/05/2024.
//

import SwiftUI


struct PrimaryButton: View {
    // Define properties for the button customization
    let onTapButton: () -> Void
    let buttonName: String
    let buttonFontSize: FontSize
    let fontWeight: FontWeight
    let maxWidth: CGFloat
    let maxHeight: CGFloat
    let foreGroundColor: Color
    let backgroundColor: Color
    let textColor: Color
    let cornerRadius: CGFloat
    
    // Initialize the PrimaryButton with default values for optional parameters
    init(buttonName: String, onTapButton: @escaping () -> Void, maxWidth: CGFloat = UIHelper.screenWidth, maxHeight: CGFloat = 50,  foreGroundColor: Color = AppColors.whiteColor, backgroundColor: Color = AppColors.primaryColor, fontWeight: FontWeight = .w400, fontSize: FontSize = .xsmall, cornerRadius: CGFloat = 30 , textColor: Color = AppColors.whiteColor) {
        self.buttonName = buttonName
        self.onTapButton = onTapButton
        self.maxWidth = maxWidth
        self.maxHeight = maxHeight
        
        
        self.foreGroundColor = foreGroundColor
        self.backgroundColor = backgroundColor
        self.buttonFontSize = fontSize
        self.fontWeight = fontWeight
        self.cornerRadius = cornerRadius
        self.textColor = textColor
    }
    
    // Define the body of the button with the specified properties
    var body: some View {
        Button(action: {
            onTapButton()
        }, label: {
            // Customize the button label with BaseBodyText
            BaseBodyText(content: buttonName, fontFamily: .dmSans, fontSize: buttonFontSize, fontWeight:fontWeight, textColor: textColor)
                  .frame(maxWidth: maxWidth, maxHeight: maxHeight)
                .cornerRadius(cornerRadius)

        })
    // Apply corner radius
       
        .foregroundColor(foreGroundColor) // Set the foreground color
        .background(backgroundColor)
        .cornerRadius(cornerRadius)
    }
}

#Preview {
    // Provide a preview for the PrimaryButton with specific parameters
    PrimaryButton(buttonName: "Submit", onTapButton: {
        debugPrint("Clicked")
    }
    )
}






