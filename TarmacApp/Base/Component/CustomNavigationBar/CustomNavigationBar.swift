//
//  CustomNavigationBar.swift
//  TarmacApp
//
//  Created by Maharjan on 31/08/2024.
//

import Foundation
import SwiftUI

struct CustomNavigationBar: View {
    let title: String
    let showBackButton: Bool
    var onBack: (() -> Void)?
    var profileTapped: (() -> Void)?
    
    var body: some View {
        HStack {
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            Button(action: {
                self.profileTapped?()
            }, label: {
                NavigationBarProfileView(title: "David Ryan", image: "", countryImage: "").frame(maxWidth: screenWidth * 0.3)
            })
            NavigationLevelView(levelValue: 44.5, levelPercentage: "25", levelValueString: "151").frame(maxWidth: screenWidth * 0.3)
            Spacer()
            NavigationBarDetailView(title: "FTP", value: "180W")
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            NavigationBarDetailView(title: "Weight", value: "75Kg")
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            NavigationBarDetailView(title: "W/kg", value: "2.4")
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            NavigationBarBluetoothView()
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            friendsButton
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            settingButton
        }
        .padding()
        .background(Color.black)
    }
    
    var friendsButton: some View {
        Button(action: {
//                self.profileTapped?()
        }, label: {
            Image(.friend).resizable().frame(width: 40 ,height: 40).clipped()
        })
    }
    
    var settingButton: some View {
        Button(action: {
//                self.profileTapped?()
        }, label: {
            Image(.setting).resizable().frame(width: 40 ,height: 40).clipped()
        })
    }
}

#Preview {
    CustomNavigationBar(title: "title", showBackButton: true)
}

