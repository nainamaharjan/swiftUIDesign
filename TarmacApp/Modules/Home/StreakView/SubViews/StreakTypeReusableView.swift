//
//  StreakTypeReusableView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//

import SwiftUI

struct StreakTypeReusableView: View {
    var body: some View {
        VStack {
            // Title and Image Stack
            HStack(alignment: .center, spacing: 8) {
                Text("Streaks Bonus")
                    .font(.system(size: 44, weight: .bold))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                
                Image(systemName: "info.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
            }
            .padding(.top, 16)
            .padding(.horizontal, 16)

            // Value and Secondary Value Stack
            HStack(alignment: .center, spacing: 16) {
                Text("10")
                    .font(.system(size: 44, weight: .bold))
                    .foregroundColor(.white)

                Text("%")
                    .font(.system(size: 44, weight: .bold))
                    .foregroundColor(.white)
            }
            .padding(.bottom, 16)
            .padding(.top, 8)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color.clear)
        .padding(.horizontal, 16)
    }
}

struct StreakTypeReusableView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            StreakTypeReusableView()
        }
        .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}


