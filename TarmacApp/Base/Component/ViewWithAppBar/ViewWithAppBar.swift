//
//  view_with_appbar.swift
//  SIM App
//
//  Created by Rajan Maharjan on 23/05/2024.
//

import SwiftUI

// MARK: View with header and back button

struct ViewWithAppBar<Content: View> : View{
    let headerTitle: String
    let isCircularButton: Bool
    let content: Content
    let onTapBackButton: () -> Void
    
    init(headerTitle: String, isCircularButton: Bool = true,   @ViewBuilder content :()-> Content, onTapBackButton: @escaping () -> Void) {
        self.headerTitle = headerTitle
        self.isCircularButton = isCircularButton
        self.content = content()
        self.onTapBackButton = onTapBackButton
    }
    
    var body: some View{
        content
        .font(.customFont(family: .inter, weight: .w700, size: .medium))
//        .toolbar { // Add buttons to the navigation bar
//            ToolbarItem(placement: .topBarLeading) {
//                VStack(alignment: .leading){
//                    VerticalSpace(size: UIHelper.verticalSmall)
//                    BackButton(isCircularBackButton: isCircularButton, action: {
//                        onTapBackButton()
//                    })
//                    .padding([.top],10)
//                    .frame(width: UIHelper.screenWidth*0.9,height: 12,alignment: .trailing)
//                        
//                    if !headerTitle.isEmpty {
//                        BaseTitleText(content: headerTitle, fontFamily: .inter, fontSize: .small, fontWeight: .w700)
//                        VerticalSpace(size: UIHelper.verticalMedium)
//                        
//                    }
//
//                }
//                
//                
//            }
//            
//        }
        
    }
    
    
}


struct ViewWithAppBarHeader : PreviewProvider{
    static var previews : some View{
       
        ViewWithAppBar(headerTitle: "", content: {
            
            ScrollView { // Make the content inside scrollable
                           VStack(alignment: .leading) {
                               ForEach(0..<50) { index in
                                   Text("Item \(index)")
                                       .padding()
                                       .background(Color.gray.opacity(0.2))
                                       .cornerRadius(8)
                                       .padding(.horizontal)
                               }
                           }
                           .padding()
                       }
            
        },
        onTapBackButton: {
            debugPrint("Clicked")
        }
        )
        
    }
}



