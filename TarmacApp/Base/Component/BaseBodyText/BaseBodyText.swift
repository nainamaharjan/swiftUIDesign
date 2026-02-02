//
//  BaseBodyText.swift
//  SIM App
//
//  Created by Naina Maharjan on 19/05/2024.
//

import SwiftUI


struct BaseBodyText: View{
    var fontFamily: FontFamily
    
    var content: String
    var textColor: Color
    var fontSize: FontSize
    var isScaled: Bool
    var fontWeight: FontWeight
    init(content: String,fontFamily: FontFamily =  .inter,  fontSize: FontSize = .small, isScaled: Bool = true, fontWeight: FontWeight = .w300 ,textColor: Color = AppColors.whiteColor) {
        self.fontFamily = fontFamily
        self.content = content
        self.fontSize = fontSize
        self.isScaled = isScaled
        self.fontWeight = fontWeight
        self.textColor = textColor
    }
    
    var body : some View{
        Text(content).font(.customFont(family: fontFamily , weight: fontWeight , size: fontSize)).foregroundColor(textColor)
    }
}

#Preview {
   BaseBodyText(content: "Title")
}
