//
//  Helper.swift
//  TarmacApp
//
//  Created by Maharjan on 25/08/2024.
//

import SwiftUI

extension View{
    func applyBG() -> some View{
        self
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .ignoresSafeArea()
    }
}

enum Tab: String,CaseIterable{
    case home = "Home"
    case workout = "Label"
    case freeride = "Position"
    case feed = "Found"
}
