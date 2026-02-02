//
//  PerformanceStatusView.swift
//  TarmacApp
//
//  Created by Personal on 8/31/24.
//

import Foundation
import SwiftUI

struct AnalyticsPerformanceStatusView: View {
    var backButtonTapped: (() -> Void)?
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Title Label")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
            }
            .padding(.top, 20)
            .padding(.bottom, 10)
            .background(Color.red) 
            
            Spacer()
        }
        .background(Color.clear)
        .edgesIgnoringSafeArea(.bottom)
    }
}

