//
//  SignUpView.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import Foundation
import SwiftUI

struct SignUpView: View {
    
    var body: some View {
        return VStack{
            SignUpFormVIew()
            BaseBodyText(content: "Which stage genre would you like to select?")
            SignViewBottomComponent(title: "WEIGHT", value: "-- Kg", icon: .backIcon)
            SignViewBottomComponent(title: "HEIGHT", value: "-- cm", icon: .backIcon)
            SignViewBottomComponent(title: "FTP", value: "-- W", icon: .backIcon)
            SignViewBottomComponent(title: "COUNTRY", value: "--", icon: .backIcon)
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}

