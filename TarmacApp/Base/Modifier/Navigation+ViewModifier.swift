
//
//  NavigationModifier.swift
//  SIM App
//
//  Created by Naina Maharjan on 26/05/2024.
//

import SwiftUI

struct NavigationBarModifier: ViewModifier {
    let hideNavigationBar: Bool
    func body(content: Content) -> some View {
        content
            .navigationBarBackButtonHidden(hideNavigationBar)
    }
}

extension View {
    func hideNavigationBarBackButton(hide: Bool) -> some View {
        self.modifier(NavigationBarModifier(hideNavigationBar: hide))
    }
}


//struct TitleTopAppBar: ViewModifier{
//    let topAppBarView:Content
//    func body(content: Content) -> some View{
//        content.toolbar(content: {
//            topAppBarView
//        })
//    }
//}

