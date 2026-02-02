//
//  WorkOutOptionsView.swift
//  TarmacApp
//
//  Created by Maharjan on 04/09/2024.
//

import Foundation
import SwiftUI

struct WorkOutOptionsView: View {
    var title: String
    var value: String
    var backgroundImage: ImageResource
    
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack {
                Image(backgroundImage)
                    .resizable()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .scaledToFill()
                    .clipped()
                HStack {
                    HorizontalSpace(size: UIHelper.horizontalXSmall)
                    VStack(alignment: .leading) {
                        BaseTitleText(content: title, fontSize: .xlarge, fontWeight: .w900)
                        HStack {
                            Image(.watch).resizable().roundedCorner(40, corners: .allCorners).frame(width: 30 ,height: 30).clipped()
                            BaseTitleText(content: value, fontSize: .large, fontWeight: .w700)
                        }
                    }
                }
            }.frame(alignment: .leading)
        })
    }
}

#Preview {
    WorkOutOptionsView(title: "das", value: "dasd", backgroundImage: .climbingBG)
}
