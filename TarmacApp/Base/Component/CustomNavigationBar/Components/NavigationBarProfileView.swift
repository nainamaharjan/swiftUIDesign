//
//  NavigationBarProfileView.swift
//  TarmacApp
//
//  Created by Maharjan on 03/09/2024.
//

import Foundation
import SwiftUI

struct NavigationBarProfileView: View {
    var title: String
    var image: String
    var countryImage: String
    
    var body: some View {
        HStack(alignment: .center) {
            Image(.streakBadge).resizable().roundedCorner(40, corners: .allCorners).frame(width: 80 ,height: 80).clipped()
            HorizontalSpace(size: UIHelper.horizontalSmall)
            VStack {
                HStack {
                    Text(title)
                        .font(.title)
                        .foregroundStyle(.white)
                        .bold()
                    Spacer()
                }
                HStack {
                    Image(.countryFlag).resizable().frame(width: 40 ,height: 40)
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
    NavigationBarProfileView(title: "Name", image: "", countryImage: "")
}
