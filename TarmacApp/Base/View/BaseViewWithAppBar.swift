//
//  BaseViewWithAppBar.swift
//  SIM App
//
//  Created by Naina Maharjan on 06/06/2024.
//

import SwiftUI

struct BaseViewWithAppBar<Content: View>: View {

    let content: Content
    init(@ViewBuilder content:()-> Content ) {
        self.content = content()
        
    }
    
    var body: some View{
        content
            .hideNavigationBarBackButton(hide: true)
            .navigationBarHidden(false)
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("")
    }
}

#Preview {
    BaseViewWithAppBar{
        VStack{
            BaseBodyText(content:"Base View With App bar")
        }
        .frame(maxWidth: UIHelper.screenWidth, maxHeight: UIHelper.screenWidth, alignment: .top)
        .background(AppColors.scaffoldColor)
    }
}
