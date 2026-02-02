//
//  row_text.swift
//  SIM App
//
//  Created by Rajan Maharjan on 23/05/2024.
//

import SwiftUI

struct RowText: View {
    let text: String
    let fontWeight: FontWeight
    let fontSize: FontSize
    let textColor: Color
    
    init(text: String,fontWeight: FontWeight = .w300, fontsize: FontSize = .xsmall , textColor: Color = AppColors.dimGrayColor) {
        self.text = text
        self.fontSize = fontsize
        self.textColor = textColor
        self.fontWeight = fontWeight
    }
    
    
    var body: some View {
        HStack(alignment: .top){
            Image(systemName:"arrow.up.right" )
                .renderingMode(.template)
                .foregroundColor(AppColors.primaryColor)
                .padding(.vertical, 5)
            BaseBodyText(content: text,
                         fontSize: fontSize,
                         fontWeight: fontWeight,
                         textColor: textColor
            )
        }
    
    }
}

#Preview {
    RowText(text: "Lorem ipsum dolor sit amet consectetur. Nibh at parturient sit placerat faucibus ullamcorper. Interdum ")
}
