//
//  WorkOutGridView.swift
//  TarmacApp
//
//  Created by Maharjan on 04/09/2024.
//

import Foundation
import SwiftUI

struct WorkOutGridView: View {
    let item: WorkoutItem

    var body: some View {
        GeometryReader(content: { geometry in
            VStack(alignment: .leading) {
                Spacer()
                HStack {
                    HorizontalSpace(size: UIHelper.horizontalXXSmall)
                    WorkOutDataView(data: "60min", image: .watch)
                    Spacer()
                    WorkOutDataView(data: "64", image: .watch)
                    Spacer()
                    WorkOutDataView(data: "542KJ", image: .watch)
                    Spacer()
                    WorkOutDataView(data: "185KW", image: .watch)
                    HorizontalSpace(size: UIHelper.horizontalXXSmall)
                }
                .font(.caption)
                .padding(.bottom, 5)
                HStack {
                    Image(.workOut).resizable().frame(width: geometry.size.width ,height: geometry.size.height * 0.5).clipped()
                }
                HStack {
                    HorizontalSpace(size: UIHelper.horizontalXXSmall)
                    Text("CLIMBING")
                        .font(.title3)
                        .foregroundColor(.white)
                    Spacer()
                    BaseTitleText(content: item.title, fontSize: .medium, fontWeight: .w800)
                    HorizontalSpace(size: UIHelper.horizontalXXSmall)
                }
                Spacer()
            }
            .padding(.vertical, 10)
            .background(AppColors.workOutGridColor)
        })
    }
}

#Preview {
    WorkOutGridView(item: WorkoutItem(duration: "100", intensity: "100", energy: "10", power: "100", title: "100"))
}
