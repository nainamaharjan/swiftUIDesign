//
//  AverageStreakView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//

import SwiftUI

struct AverageStreakView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text("Average streak")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.white)
                .padding(.top)
            
            HStack(alignment: .center, spacing: 8) {
                Text("5.2")
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

struct AverageStreakView_Previews: PreviewProvider {
    static var previews: some View {
        AverageStreakView()
            .background(Color.black) // To visualize against a dark background
            .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}

