//
//  NavigationBarBluetoothView.swift
//  TarmacApp
//
//  Created by Maharjan on 03/09/2024.
//

import Foundation
import SwiftUI

struct NavigationBarBluetoothView: View {
    
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            BaseTitleText(content: "connect", fontSize: .medium, fontWeight: .w800)
            Image(.bluetooth).resizable().frame(width: 40 ,height: 40).clipped()
            Spacer()
        }
        .padding()
        .background(Color.black)
    }
}

#Preview {
    NavigationBarBluetoothView()
}
