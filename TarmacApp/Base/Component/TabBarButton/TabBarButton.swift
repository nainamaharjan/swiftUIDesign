//
//  tab_bar_button.swift
//  SIM App
//
//  Created by Naina Maharjan on 23/05/2024.
//

import SwiftUI

struct TabBarButton: View {
    let text: String
    var isSelected: Bool
    var body: some View {
        BaseBodyText(content: text, fontFamily: .inter, fontSize: isSelected ?  .xsmall : .xsmall , fontWeight: isSelected ? .w600 :  .w400,
                     textColor:isSelected ?    AppColors.blackColor : AppColors.bodyTextTertiaryColor
        )
            .padding(.bottom,10)
            .border(width: 1, edges: [.bottom], color: isSelected ?  AppColors.primaryColor : .clear)
    }
}





