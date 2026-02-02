//
//  LongestStreakView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//

import Foundation
import SwiftUI

struct LongestStreakView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text("Longest streak")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.white)
                .padding(.top)
            
            HStack(alignment: .center, spacing: 8) {
                Text("17")
                    .font(.system(size: 80, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)

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
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.clear) // Background color equivalent to the clear background of `mainWrapperView`
    }
}

struct LongestStreakView_Previews: PreviewProvider {
    static var previews: some View {
        LongestStreakView()
            .background(Color.black) // To visualize against a dark background
            .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}
