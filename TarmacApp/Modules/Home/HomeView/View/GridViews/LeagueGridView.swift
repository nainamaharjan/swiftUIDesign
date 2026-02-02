//
//  LeagueView.swift
//  TarmacApp
//
//  Created by Maharjan on 25/08/2024.
//

import SwiftUI

struct LeagueGridView: View {
    
    var leaguePoints: Int?
    var leaguePosition: Int?
    var seasonPosition: Int?
    var seasonNumber: Int?
    
    init(leaguePoints: Int, leaguePosition: Int, seasonPosition: Int, seasonNumber: Int) {
        self.leaguePoints = leaguePoints
        self.leaguePosition = leaguePosition
        self.seasonPosition = seasonPosition
        self.seasonNumber = seasonNumber
    }
    
    var body: some View {
        ZStack {
            Image(.leageBackground) // Replace with your actual image name
                .resizable()
                .scaledToFill()
                .clipped().frame(width: UIHelper.screenWidth * 0.48, height: UIHelper.screenHeight * 0.32)
            
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.white.opacity(0.3)]), startPoint: .leading, endPoint: .trailing)
                .cornerRadius(10)
            
            VStack(alignment: .leading) {
                HStack {
                    HorizontalSpace(size: UIHelper.horizontalXSmall)
                    VStack(alignment: .leading) {
                        LeagueTrophyView(title: "SILVER LEAGUE", division: "Division 2")
                        BadgeView(leagueValue: "18", season: "865")
                            .padding(.leading, UIHelper.horizontalSmall)
                        VerticalSpace(size: UIHelper.verticalSmall)
                    }
                    VStack {
                        pointView
                        Image(.rankCurve) // Replace with your actual image name
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 150)
                            .clipped()
                    }
                }
                HStack(alignment: .firstTextBaseline) {
                    HorizontalSpace(size: UIHelper.horizontalSmall)
                    BaseTitleText(content: "ENERGY PODS", fontFamily: .inter, fontSize: .xlarge, fontWeight: .w900)
                    HorizontalSpace(size: UIHelper.horizontalSmall)
                    BaseTitleText(content: "The Week 14 Season of 2024 ", fontSize: .small, fontWeight: .w900)
                }
            }
        }
        .background(Color.black)
        .frame(width: UIHelper.screenWidth * 0.48, height: UIHelper.screenHeight * 0.32)
        .shadow(radius: 5)
        .clipped()
    }
    
    var pointView: some View {
        HStack {
            HorizontalSpace(size: UIHelper.horizontalSmall)
            Image(.point) // Replace with your actual image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 40)
                .clipped()
            HStack(alignment: .firstTextBaseline) {
                HorizontalSpace(size: UIHelper.horizontalXXSmall)
                BaseTitleText(content: String(describing: self.leaguePoints ?? 0), fontSize: .xlarge, fontWeight: .w900)
                BaseTitleText(content: "point", fontSize: .medium, fontWeight: .w600)
            }
        }
    }
}

struct LeagueGridView_Previews: PreviewProvider {
    static var previews: some View {
        LeagueGridView(leaguePoints: 0, leaguePosition: 0, seasonPosition: 0, seasonNumber: 0)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}

