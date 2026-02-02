//
//  TitleToAppBarView.swift
//  SIM App
//
//  Created by Rajan Maharjan on 28/05/2024.
//

import SwiftUI

struct TitleTopAppBarView: View {
    let title: String
    let isCircularBackButton: Bool
    let onTapButton: () -> Void
    
    var body: some View {
        VStack(alignment:.leading, spacing: 0 ){
            HStack(alignment:.top){
                Spacer()
                Image(systemName: "arrow.left").resizable()
                    .frame(width: 15, height: 15)
                    .onTapGesture {
                        onTapButton()
                    }
                    .padding(.horizontal, 10)
                    .background(Circle().fill(
                        isCircularBackButton ?  AppColors.whiteColor : .clear).frame(width: 35,height: 35))
                    .padding(.trailing, 16)
            }
            if !title.isEmpty{
                BaseTitleText(content: title,
                              fontFamily: .inter,
                              fontSize: .small,
                              fontWeight: .w700,
                              textColor: AppColors.titleTextColor
                              
                )
                .padding(.leading,UIHelper.screenWidth*0.03)
                
            }
        }
        .padding(.leading, UIHelper.screenWidth*0.02)
        .frame(width: UIHelper.screenWidth, alignment: .topLeading)
    }
}

#Preview{
    TitleTopAppBarView(title: "Hello", isCircularBackButton: true,
                       onTapButton: {
    }
    )
}
