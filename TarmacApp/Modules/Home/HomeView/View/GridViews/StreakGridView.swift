//
//  StreakView.swift
//  TarmacApp
//
//  Created by Maharjan on 25/08/2024.
//

import Foundation
import SwiftUI

struct StreakGridView: View {
    var body: some View {
        ZStack {
            Image(.streakBackground)
                .resizable()
                .scaledToFill()
                .clipped()
                .cornerRadius(10)
            
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.white.opacity(0.3)]), startPoint: .leading, endPoint: .trailing)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        weekView
                        VerticalSpace(size: UIHelper.verticalSmall)
                        badgeList
                    }
                    HorizontalSpace(size: UIHelper.horizontalMedium)
                    recoveryAidView
                }
                VerticalSpace(size: UIHelper.verticalSmall)
                BaseTitleText(content: "STREAK", fontFamily: .inter, fontSize: .xlarge, fontWeight: .w900)
            }
        }
        .background(Color.black) // Background color similar to the image
        .frame(width: UIHelper.screenWidth * 0.48, height: UIHelper.screenHeight * 0.32)
        .shadow(radius: 5).clipped()
    }
    
    var weekView: some View {
        HStack {
            BaseTitleText(content: "6", fontSize: .xxxxlarge, fontWeight: .w900)
            VStack(alignment: .leading) {
                BaseTitleText(content: "th", fontSize: .medium, fontWeight: .w800)
                BaseTitleText(content: "WEEK", fontSize: .medium, fontWeight: .w800)
            }
        }
    }
    
    var badgeList: some View {
        HStack {
            Image(.streakBadge) // Replace with your actual image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .clipped()
            Image(.streakBadge) // Replace with your actual image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .clipped()
            Image(.streakBadge) // Replace with your actual image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .clipped()
            Image(.streakBadge) // Replace with your actual image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .clipped()
        }
    }
    
    var recoveryAidView: some View {
        VStack {
            VerticalSpace(size: UIHelper.verticalLarge)
            BaseTitleText(content: "RECOVERY AID", fontSize: FontSize.medium, fontWeight: .w900)
            HStack {
                Image(.recovery) // Replace with your actual image name
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .clipped()
                BaseTitleText(content: "x",fontSize: .large)
                BaseTitleText(content: "2", fontSize: .xxlarge, fontWeight: .w800)
            }
        }
    }
    
}

struct StreakGridView_Previews: PreviewProvider {
    static var previews: some View {
        StreakGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
