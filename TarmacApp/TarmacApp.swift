//
//  TarmacAppApp.swift
//  TarmacApp
//
//  Created by  on 18/08/2024.
//

import SwiftUI

@main
struct TarmacApp: App {
    var body: some Scene {
        WindowGroup {
            MainApp().preferredColorScheme(.dark).frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

