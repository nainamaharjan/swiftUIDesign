//
//  BaseView.swift
//  SIM App
//
//  Created by Rajan Maharjan on 26/05/2024.
//

import SwiftUI

struct BaseView<Content: View>: View {
    
    
    let content: Content
    
    
    init(@ViewBuilder content: () -> Content ) {
        self.content = content()
        
    }
    
    var body: some View {
            content
                .hideNavigationBarBackButton(hide: true)
                .navigationBarHidden(true)
                .background(AppColors.scaffoldColor).preferredColorScheme(.dark).frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}






