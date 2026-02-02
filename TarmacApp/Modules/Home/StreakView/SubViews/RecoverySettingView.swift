//
//  RecoverySettingView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//

import SwiftUI

struct RecoverySettingsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            HStack(alignment: .center, spacing: 8) {
                Text("Recovery Aid")
                    .font(.system(size: 40, weight: .bold))
                    .foregroundColor(.white)
                
                Image(systemName: "info.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
            }
            
            Text("Details about recovery aid")
                .font(.system(size: 38))
                .foregroundColor(.gray)
            
            HStack {
                Image("recoveryImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 40, height: 30)
                
                Text("x 2")
                    .font(.system(size: 44, weight: .bold))
                    .foregroundColor(.white)
            }
        }
        .padding()
    }
}

struct RecoverySettingsView_Previews: PreviewProvider {
    static var previews: some View {
        RecoverySettingsView()
            .background(Color.black) // Adding background to preview
            .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}

