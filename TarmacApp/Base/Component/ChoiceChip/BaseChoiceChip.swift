//
//  base_choice_chip.swift
//  SIM App
//
//  Created by Rajan Maharjan on 20/05/2024.
//

import SwiftUI

struct ChoiceChip: View {
    
    let chipName: String
    var fontWeight: FontWeight?
    
    var isSelected: Bool
  var onTap: (String) -> Void
    var body: some View {
        BaseBodyText(content: chipName,
                     fontFamily: .dmSans,
                     fontSize: .xxsmall, fontWeight: fontWeight  ?? .w400, 
                     textColor: isSelected ? Color.white : AppColors.bodyTextSecondaryColor
        )
        .padding(.vertical, UIHelper.screenHeight*0.01)
            .padding(.horizontal, UIHelper.screenWidth*0.1)
            .background(isSelected ? AppColors.primaryColor : AppColors.chipColor)
            .cornerRadius(20)
            .onTapGesture {
                onTap(chipName)
            }
    }
}


    


#Preview {
    ChoiceChip(chipName: "English", isSelected: true, onTap: {c in
        print("Hello \(c)")
    }
    )
}
