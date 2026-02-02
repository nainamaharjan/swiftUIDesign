//
//  ViewHeader.swift
//  SIM App
//
//  Created by Rajan Maharjan on 22/05/2024.
//

import SwiftUI

struct ViewHeader: View {
    
    let headerTitle: String
    let onTapBackButton: () -> Void
    
    
    init(headerTitle: String, onTapBackButton: @escaping () -> Void) {
        self.headerTitle = headerTitle
        self.onTapBackButton = onTapBackButton
    }
    
    
    var body: some View {
        VStack(spacing: 0) {
            VerticalSpace(size: UIHelper.verticalMedium)
            Image(systemName: "arrow.backward").frame(
                width: UIHelper.screenWidth,
                alignment: .topTrailing).padding(.trailing, UIHelper.horizontalXLarge)
                .onTapGesture {
                    onTapBackButton()
                }
            BaseTitleText(content: headerTitle,
                          fontSize: .medium,
                          fontWeight: .w700
                          
                          
            ).frame(width:UIHelper.screenWidth, height: UIHelper.verticalMedium, alignment: .leading).padding(.leading, UIHelper.horizontalLarge)
        }
        .frame(width: UIHelper.screenWidth * 0.9,height: 100, alignment: .top)
        .padding(.all)
    }
}

#Preview {
    ViewHeader(
        headerTitle: "Edit Profile", onTapBackButton: {
            debugPrint("On Tap back")
        }
    )
}
