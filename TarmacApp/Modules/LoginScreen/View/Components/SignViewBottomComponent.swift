//
//  SignViewBottomComponent.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import SwiftUI

struct SignViewBottomComponent: View {
    var title: String
    var value: String
    var icon: ImageResource
    
    init(title: String, value: String, icon: ImageResource) {
        self.title = title
        self.value = value
        self.icon = icon
    }
    
    var body: some View {
        return HStack {
            BaseBodyText(content: title)
            BaseTitleText(content: value)
            Image(icon)
        }
    }
}

