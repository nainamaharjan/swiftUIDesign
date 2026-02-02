//
//  EnergyPodCustomNavbar.swift
//  TarmacApp
//
//  Created by Personal on 8/30/24.
//

import SwiftUI

struct EnergyPodCustomNavbar: View {
    var title: String
    var backButtonTapped: (() -> Void)?
    
    var body: some View {
        HStack {
            Button(action: {
                backButtonTapped?()
            }) {
                Image(systemName: "chevron.left")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                    .frame(width: 80, height: 80)
            }
            
            Text(title)
                .font(.system(size: 50))
                .foregroundColor(.white)
                .lineLimit(1)
                .padding(.leading, 8)
            
            Spacer()
            
            HStack(spacing: 10) {
                Image("energyBarImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 60)
                
                    Text("1128.66")
                        .font(.system(size: 40))
                        .foregroundColor(.white)
                    Text("ep/LIFE")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
            }
            .padding(.trailing, 20)
        }
        .padding(.top)
        .background(Color.black)
        .frame(height: 150)
    }
}

struct EnergyPodCustomNavbar_Previews: PreviewProvider {
    static var previews: some View {
        EnergyPodCustomNavbar(title: "ENERGY PODS")
            .background(Color.black)
            .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}
