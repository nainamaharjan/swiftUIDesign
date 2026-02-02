//
//  text_editor.swift
//  SIM App
//
//  Created by Rajan Maharjan on 20/05/2024.
//

import SwiftUI

struct TextEditorWithBorder: View {
    @State private var isValid: Bool = false
    @State private var errorMessage: String?
    let validation: (String) -> String?
    let placeHoderText : String?
    @Binding var fullText: String

    var body: some View {
        VStack {
            TextEditor(
                text: $fullText)
            
            .font(.customFont(family: .dmSans, weight: .w400, size: .xxsmall))
            .foregroundColor(.black)
                .onChange(of: fullText) { value in
                    errorMessage = validation(value)
                    isValid = errorMessage == nil
                }
                .addBorder(AppColors.lightGrey, cornerRadius: 10)
//                .padding(.all,5)
//                .padding(4)
//                .frame(maxHeight: maxHeight)
                
                .accentColor(AppColors.primaryColor)
                .overlay(
                    VStack {
                        if fullText.isEmpty {
                            BaseBodyText(content: placeHoderText ?? "Enter text here",
                                         fontFamily: .dmSans, fontSize: .xxsmall, fontWeight: .w400,
                                         textColor: AppColors.bodyTextTertiaryColor
                            )
                                .padding(.all,5)
                        }
                        Spacer()
                    }.padding([.leading,.top], 5)
                        .frame(maxWidth: UIHelper.screenWidth , alignment: .leading)
                    )
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
