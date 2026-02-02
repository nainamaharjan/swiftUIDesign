//
//  BaseTitleText.swift
//  SIM App
//
//  Created by Naina Maharjan on 17/05/2024.
//

import SwiftUI

struct BaseTitleText: View {
    let fontFamily: FontFamily
    
    let content: String
    let textColors: Color
    let fontSize: FontSize
    let isScaled: Bool
    let fontWeight: FontWeight
    init(content: String,fontFamily: FontFamily =  .dmSans,  fontSize: FontSize = .medium, isScaled: Bool = true, fontWeight: FontWeight = .w500, textColor: Color = .white) {
        self.fontFamily = fontFamily
        self.content = content
        self.fontSize = fontSize
        self.isScaled = isScaled
        self.fontWeight = fontWeight
        self.textColors = textColor
    }
    
    var body : some View{
        Text(content).font(.customFont(family: fontFamily , weight: fontWeight , size: fontSize)).foregroundColor(textColors)
    }
}

#Preview {
    BaseTitleText(content: "Title")
}
