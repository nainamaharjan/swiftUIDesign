//
//  LoginTextField.swift
//  TarmacApp
//
//  Created by developer on 19/08/2024.
//

import Foundation
import SwiftUI

struct LoginTextField: View {
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
            HStack{
                Rectangle()
                    .foregroundColor(.cyan.opacity(0.5))
                    .frame(maxWidth: 15, maxHeight: 600)
                TextField(hintText, text: $text,
                          prompt: Text(hintText).font(.customFont(family: .inter, weight: .w500, size: .small))
                    .foregroundColor(AppColors.whiteColor)
                ).frame(height: 60).background(Color.blue.opacity(0.3)).font(.customFont(family: .inter, weight: .w400, size: .small))
                    .onChange(of: text) { value in
                        errorMessage = validation(value)
                        isValid = errorMessage == nil
                    }
                    .onSubmit {
                        onSubmit()
                    }
                .foregroundColor(AppColors.whiteColor)}
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


