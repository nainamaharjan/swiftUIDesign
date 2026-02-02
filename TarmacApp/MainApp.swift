//
//  MainApp.swift
//  TarmacApp
//
//  Created by Maharjan on 01/09/2024.
//

import Foundation
import SwiftUI

struct MainApp: View {
    
    var body: some View {
        RouterView { router in  // The main view container that manages navigation

            LoginView(viewModel: LoginViewModel())

        }
    }
    
}

#Preview {
    MainApp()
}
