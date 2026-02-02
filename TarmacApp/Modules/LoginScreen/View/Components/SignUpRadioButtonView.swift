//
//  SignUpRadioButtonView.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import Foundation
import SwiftUI


struct SignUpRadioButtonView: View {
    var body: some View {
        return VStack {
            radioButton
            radioButton
            radioButton
        }
    }
    
    var radioButton: some View {
        var title: String?
        return
            HStack {
                Image(systemName: "apple.logo")
                Image(systemName: "apple.logo")
                BaseBodyText(content: title ?? "")
            }
    }
}


