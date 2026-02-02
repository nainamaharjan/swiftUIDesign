//
//  NavigationLevelView.swift
//  TarmacApp
//
//  Created by Maharjan on 03/09/2024.
//

import Foundation
import SwiftUI

struct NavigationLevelView: View {
    var levelValue: Double
    var levelPercentage: String
    var levelValueString: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(.jersey).resizable().roundedCorner(40, corners: .allCorners).frame(width: 80 ,height: 80).clipped()
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            VStack(alignment: .leading) {
                HStack {
                    Text("Lv \(levelValueString)")
                        .font(.title)
                        .foregroundStyle(.white)
                        .bold()
                    HorizontalSpace(size: UIHelper.horizontalXSmall)
                    Text("\(levelPercentage)%")
                        .font(.title3)
                        .foregroundStyle(.white)
                        .bold()
                    Spacer()
                }
                HStack(alignment: .center) {
                    ZStack(alignment: .leading) {
                                // Background for the unfilled portion
                                RoundedRectangle(cornerRadius: 0)
                                    .fill(Color.gray) // Unfilled color
                                    .frame(height: 20) // Set desired height for the progress bar
                                
                                // Foreground for the filled portion
                                RoundedRectangle(cornerRadius: 0)
                                    .fill(Color.white) // Filled color
                                    .frame(width: CGFloat((levelValue * 0.2) / 100) * (screenWidth * 0.2), height: 20) // Set width proportionally based on the progress value
                            }.frame(maxWidth: screenWidth * 0.15)
                            .padding(.horizontal, 10)
                            .padding()
                    Spacer()
                }
            }
            Spacer()
        }
        .padding()
        .background(Color.black)
    }
}

#Preview {
    NavigationLevelView(levelValue: 44.5, levelPercentage: "25", levelValueString: "151")
}
