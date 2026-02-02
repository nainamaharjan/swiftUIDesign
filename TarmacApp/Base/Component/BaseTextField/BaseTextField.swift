//
//  base_text_field.swift
//  SIM App
//
//  Created by Rajan Maharjan on 19/05/2024.
//

import SwiftUI

struct BaseTextField: View {
    @Binding var text: String
    @State private var errorMessage: String?
    @State private var isValid: Bool = false
    var hintText: String
    var color: Color
    var font: Font
    let onSubmit: () -> Void

    let validation: (String) -> String?

    init(hintText: String = "Hint Text", text: Binding<String>, onSubmit: @escaping () -> Void, color: Color = AppColors.bodyTextColor, font: Font = Font.customFont(family: .dmSans), validation: @escaping (String) -> String?

    ) {
        _text = text
        self.color = color

        self.font = font
        self.hintText = hintText

        self.onSubmit = onSubmit
        self.validation = validation
    }

    var body: some View {
        VStack {
            TextField(hintText, text: $text,
                      prompt: Text(hintText).font(.customFont(family: .inter, weight: .w500, size: .small))
                .foregroundColor(AppColors.whiteColor)
            ).font(.customFont(family: .inter, weight: .w400, size: .small))
                .onChange(of: text) { value in
                    errorMessage = validation(value)
                    isValid = errorMessage == nil
                }
                .onSubmit {
                    onSubmit()
                }
                .foregroundColor(AppColors.whiteColor)

//            Rectangle()
//                .frame(height: 1)
//                .foregroundColor(AppColors.bodyTextColor)
            if let errorMessage = errorMessage {
                BaseBodyText(content: errorMessage,
                             fontSize: .xxxsmall,
                             textColor: .red
                )
                .frame(maxWidth: UIHelper.screenWidth, alignment: .leading)
            }
        }
    }
}
