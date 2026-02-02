//
//  StreakCountSettingView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//

import SwiftUI

struct StreakCountSettingView: View {
    @State private var selectedSegment = 2
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Main number and "th" + "WEEK" text
            HStack(alignment: .center, spacing: 8) {
                // Main number
                Text("6")
                    .font(.system(size: 80, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                
                // "th" and "WEEK" text
                VStack(alignment: .center, spacing: 4) {
                    Text("th")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                    
                    Text("WEEK")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                }
            }
            .padding(.leading, 20)
                        
            // HStack for images
            HStack(spacing: 4) {
                ForEach(0..<4) { index in
                    Image(index < 2 ? "streakBadgeImage" : "recoveryImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 50)
                }
            }
            .padding(.horizontal, 20)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct StreakCountSettingView_Previews: PreviewProvider {
    static var previews: some View {
        StreakCountSettingView()
            .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}
