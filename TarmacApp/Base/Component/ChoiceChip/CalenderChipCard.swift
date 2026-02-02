//
//  CalenderChipCard.swift
//  SIM App
//
//  Created by Rajan Maharjan on 28/05/2024.
//

import SwiftUI

struct CalenderChipCard: View {
    
    let calenderModel: CalenderModel
    
    var isSelected : Bool
    let onTap:()-> Void
    var body: some View {
        VStack{
            VerticalSpace(size: UIHelper.verticalXXSmall)
            BaseBodyText(content: calenderModel.dayName,
                         fontSize: .xsmall,
                         fontWeight: .w500
                         , textColor: isSelected ? AppColors.whiteColor : AppColors.bodyTextColor
            
            )
            BaseBodyText(content: String(calenderModel.date),
                         fontSize: .large,
                         fontWeight: .w500
                         , textColor: isSelected ? AppColors.whiteColor : AppColors.bodyTextColor
            
            )
            VerticalSpace(size: UIHelper.verticalXXSmall)
        }
       
        .padding(.all, 5)
        .frame(width: UIHelper.screenWidth*0.25, height: UIHelper.screenHeight*0.09, alignment: .leading)
        .background(isSelected ? AppColors.primaryColor : AppColors.whiteColor)
        .cornerRadius(11)
        .onTapGesture {
            onTap()
        }
    }
}

#Preview {
    CalenderChipCard(calenderModel: CalenderModel(
        id: 1, dayName: "Nov", date: 19
    ), isSelected: false) {
    }
}


struct CalenderModel: Identifiable{
    let id: Int
    let dayName: String
    let date: Int
}
