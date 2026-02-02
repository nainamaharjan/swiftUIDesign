//
//  NavigationBarDetailView.swift
//  TarmacApp
//
//  Created by Maharjan on 03/09/2024.
//

import Foundation
import SwiftUI

struct NavigationBarDetailView: View {
    var title: String
    var value: String
    
    var body: some View {
        VStack {
            BaseTitleText(content: title, fontSize: .medium, fontWeight: .w800)
            BaseTitleText(content: value, fontSize: .large, fontWeight: .w900)
        }
        .padding()
        .background(Color.black)
    }
}

#Preview {
    NavigationBarDetailView(title: "FTP", value: "180W")
}
