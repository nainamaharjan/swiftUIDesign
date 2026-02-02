//
//  EnergyPodMainView.swift
//  TarmacApp
//
//  Created by Personal on 8/30/24.
//

import Foundation
import SwiftUI

struct EnergyPodMainView: View {
    
    var navigateBack: NavigationBackClosure
    
    var body: some View {
        VStack {
            EnergyPodTypeView(segmentChangedClosure: { selectedIndex in
                print("Selected Segment Index: \(selectedIndex)")
            }, backButtonTapped: {
                navigateBack()
            })
            
            EnergyPodPerformanceStatusView(backButtonTapped: {
                print("Back button tapped")
            })
        }
    }
}

struct EnergyPodMainView_Previews: PreviewProvider {
    static var previews: some View {
        EnergyPodMainView(navigateBack: {})
            .background(Color.black)
            .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}
