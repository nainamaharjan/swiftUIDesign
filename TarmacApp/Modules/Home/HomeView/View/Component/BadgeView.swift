//
//  BadgeView.swift
//  TarmacApp
//
//  Created by Maharjan on 25/08/2024.
//

import Foundation
import SwiftUI

struct BadgeView: View {
    var leagueValue: String?
    var season: String?
    
    init(leagueValue: String? = nil, season: String? = nil) {
        self.leagueValue = leagueValue
        self.season = season
    }
    
    var body: some View {
        HStack(alignment: .center) {
            Image(.leagueBadge) // Replace with your actual image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
                .clipped()
            
            HorizontalSpace(size: UIHelper.horizontalSmall)
            
            VStack(alignment: .leading) {
                if let leagueValue = leagueValue {
                    getIconWithStringView(title: "\(leagueValue)th/League", icon: .leagueRankTrophy)
                }
                if let season = season {
                    getIconWithStringView(title: "\(season)th/Season", icon: .leagueRankSeason)
                }
            }
        }
    }
    
    func getIconWithStringView(title: String, icon: ImageResource) -> some View {
        HStack {
            Image(icon) // Replace with your actual image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 30, height: 30)
                .clipped()
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            BaseTitleText(content: title, fontSize: .medium, fontWeight: .w800)
        }
    }
}



struct BadgeView_Previews: PreviewProvider {
    static var previews: some View {
        BadgeView(leagueValue: "18", season: "865")
    }
}
