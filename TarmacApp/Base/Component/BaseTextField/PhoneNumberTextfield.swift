//
//  phone_number_textfield.swift
//  SIM App
//
//  Created by Naina Maharjan on 20/05/2024.
//

import SwiftUI

struct PhoneNumberTextField: View {
    @Binding var text: String // State variable to hold the text input
    var hintText: String // Placeholder text for the TextField
    var color: Color // Color for the text and other UI elements
    var font: Font // Font to be used for the TextField and other texts
    let onSubmit: () -> Void // Closure to be executed when the TextField's submit action is triggered
    let validation: (String) -> String?
    @State private var errorMessage: String?
    @State private var isValid: Bool = false
    let maxLength: Int
    // Initializer with default values
    init(hintText: String = "Hint Text", text: Binding<String>, onSubmit: @escaping () -> Void, color: Color = Color.black, font: Font = Font.customFont(family: .dmSans), validation: @escaping (String) -> String?, maxLength: Int = 20) {
        self.color = color
        _text = text
        self.font = font
        self.hintText = hintText
        self.onSubmit = onSubmit
        self.validation = validation
        self.maxLength = maxLength
    }

    let textLimit = 7 // Limit for the text input length

    var body: some View {
        VStack {
            HStack {
                Spacer(minLength: 3) // Adds minimum spacing before the flag image
                Image( "") // Saudi Arabia flag image

                BaseBodyText(content: "+966", // Country code text
                             fontFamily: .dmSans,
                             fontSize: .small,
                             fontWeight: .w300,
                             textColor: AppColors.bodyTextColor
                )

                // TextField for phone number input
                TextField(hintText, text: $text, // Binding the text input to the state variable
                          prompt: Text(hintText)
                              .font(.customFont(family: .dmSans, weight: .w400, size: .small))
                              .foregroundColor(AppColors.bodyTextColor)
                )
                .font(.customFont(family: .dmSans, weight: .w400, size: .small)) // Custom font for the text
                .onChange(of: text) { value in
                    if value.count > maxLength {
                        text = String(value.prefix(maxLength))
                    }
                    errorMessage = validation(text)
                    isValid = errorMessage == nil
                }
                .onSubmit { // Submit action for the TextField
                    onSubmit()
                }
//                .limitInputLength(value: $text, length: textLimit) // Limit the length of the input text
                .keyboardType(.phonePad) // Set the keyboard type to phone pad
                .foregroundColor(AppColors.bodyTextColor) // Set the text color
            }
            // Underline for the TextField
            Rectangle()
                .frame(height: 1)
                .foregroundColor(AppColors.bodyTextColor)
            
            if !isValid{
                BaseBodyText(content: errorMessage ?? "",fontSize: .xxxsmall, textColor: .red)
                    .frame(maxWidth: UIHelper.screenWidth, alignment: .leading)
            }
            
        }
        // Padding around the VStack
    }
}

// #Preview {
//    PhoneNumberTextField(hintText: "50XXXXXX50",text: "", onSubmit: {
//        // Action to be performed when submit is triggered
//    },  color: .blue, font: Font.customFont(family: .dmSans))
// }
