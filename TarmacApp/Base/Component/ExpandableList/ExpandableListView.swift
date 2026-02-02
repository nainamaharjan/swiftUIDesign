//
//  expandable_list_view.swift
//  SIM App
//
//  Created by Naina Maharjan on 22/05/2024.
//

import SwiftUI

struct ExpandableListView: View {
    
    @State var showContent: Bool = false
    
    let titile: String
    let content: String
    
    init(showContent: Bool, titile: String, content: String) {
        self.showContent = showContent
        self.titile = titile
        self.content = content
    }
    
     
    
    
    
    var body: some View {
        VStack(alignment: .leading){
            VerticalSpace(size: UIHelper.verticalSmall)
            HStack{
                BaseBodyText(content: titile,
                             fontSize: .xsmall,
                             fontWeight: .w500,
                             textColor: AppColors.blackColor
                
                )
                Spacer()
                Image(systemName: showContent ? "xmark" :  "plus")
                    .renderingMode(.template)
                    .foregroundColor(AppColors.primaryColor)
                    .onTapGesture {
                        showContent.toggle()
                    }
                    
                
            }.padding(.horizontal, UIHelper.screenWidth*0.05)
            if showContent {
                VerticalSpace(size: UIHelper.verticalSmall)
                BaseBodyText(content: content,
                             fontSize: .xxsmall,
                             fontWeight: .w400,
                             textColor:  AppColors.bodyTextColor
                             
                )
                .padding(.horizontal, UIHelper.screenWidth*0.05)
                VerticalSpace(size: UIHelper.verticalSmall)
            }
                
            
        }
            .background( showContent ? AppColors.whiteColor : AppColors.scaffoldColor )
                
    }
}


#Preview {
    ExpandableListView(showContent: false, titile: "Hello", content: "World")
}
