//
//  StreakView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//

import SwiftUI

struct StreakView: View {
    
    var backButtonTapped: (() -> Void)?
    
    var navigateBack: NavigationBackClosure
    
    var body: some View {
        ZStack {
            // Background Image
            Image("streakBackgroundImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
            GeometryReader { geometry in
                VStack(spacing: 0) {
                    // Top Section with Back Button
                    HStack {
                        Button(action: {
                            backButtonTapped?()
                        }) {
                            Image(systemName: "chevron.left")
                                .font(.system(size: 40, weight: .bold))
                                .foregroundColor(.white)
                        }
                        .padding(.leading, 30)
                        Spacer()
                    }
                    .padding(.top, 100)
                    
                    // Main Content
                    HStack(spacing: 0) {
                        // Left Stack View
                        VStack(alignment: .leading, spacing: 20) {
                            
                            Text("STREAK")
                                .font(.system(size: 44, weight: .bold))
                                .foregroundColor(.white)
                                .padding(.bottom, 20) // Space between title and the next view

                            StreakCountSettingView() // Debugging background color
                            
                            RecoverySettingsView()
                                .padding(.bottom, 20) // Space between recovery aid and the bottom of the VStack // Debugging background color
                        }
                        .frame(width: geometry.size.width / 2)
                        .padding(.leading, 16) // Padding for left side
                        
                        // Right Stack View
                        VStack(alignment: .trailing, spacing: 0) {
                            StreakTypeReusableView()
                                .background(Color.yellow.opacity(0.3)) // Debugging background color
                            LongestStreakView()
                                .background(Color.orange.opacity(0.3)) // Debugging background color
                            AverageStreakView()
                                .background(Color.purple.opacity(0.3)) // Debugging background color
                        }
                        .frame(width: geometry.size.width / 2)
                        .padding(.trailing, 16) // Padding for right side
                    }
                    .padding(.horizontal, 16)
                    
                    Spacer()
                }
                .padding(.bottom, 32)
            }
        }
    }
}

struct StreakView_Previews: PreviewProvider {
    static var previews: some View {
        StreakView(navigateBack: {})
            .background(Color.black) // Background for the preview
            .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}
