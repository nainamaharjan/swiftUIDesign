//
//  LeagueTrophyView.swift
//  TarmacApp
//
//  Created by Maharjan on 25/08/2024.
//

import Foundation
import SwiftUI

struct LeagueTrophyView: View {
    
    var title: String?
    var division: String?
    
    init(title: String? = nil, division: String? = nil) {
        self.title = title
        self.division = division
    }
    
    var body: some View {
        HStack(alignment: .center) {
            Image(.trophy) // Replace with your actual image name
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 80).clipped()
            HorizontalSpace(size: UIHelper.horizontalSmall)
            VStack(alignment: .leading) {
                BaseTitleText(content: self.title ?? "", fontSize: .xlarge, fontWeight: .w500)
                BaseTitleText(content: self.division ?? "", fontWeight: .w900)
                VerticalSpace(size: UIHelper.verticalXXSmall)
            }
        }
    }
        
}


struct LeagueTrophyView_Previews: PreviewProvider {
    static var previews: some View {
        LeagueTrophyView(title: "Silver League", division: "Division 2")
    }
}
