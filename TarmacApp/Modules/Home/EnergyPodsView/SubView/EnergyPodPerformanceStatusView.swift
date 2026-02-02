//
//  EnergyPodPerformanceStatusView.swift
//  TarmacApp
//
//  Created by Personal on 8/30/24.
//

import Foundation
import SwiftUI

struct EnergyPodPerformanceStatusView: View {
    var backButtonTapped: (() -> Void)?
    
    var body: some View {
        HStack(spacing: 0) {
            Button(action: {
                backButtonTapped?()
            }) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 80, height: 120)
                    .background(Color.clear)
            }
            
            VStack {
                Text("26 Jun - 29 Jun")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .padding(.top)
                
                Text("Exception Performance")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
              
            }
            .frame(maxWidth: .infinity)
            
            
            Text("3.89ep")
                .font(.system(size: 26))
                .foregroundColor(.white)
                .padding(.trailing, 20)
            Spacer()
        }
        .background(Color.green)
    }
}

struct EnergyPodPerformanceStatusViewr_Previews: PreviewProvider {
    static var previews: some View {
        EnergyPodPerformanceStatusView()
            .background(Color.black)
            .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}
