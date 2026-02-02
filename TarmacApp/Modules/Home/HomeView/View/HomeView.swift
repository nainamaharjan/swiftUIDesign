//
//  HomeView.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import SwiftUI

typealias NavigationBackClosure = () -> Void

struct HomeView: View {
    @State private var currentView: HomeViewType = .home
    @State private var previousView: HomeViewType = .home
    @State private var isNavigatingBack = false
    
    let items = Array(1...4)
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ZStack {
            switch currentView {
            case .home:
                bodyView
                    .transition(.opacity)
            case .energyPod:
                EnergyPodMainView(navigateBack: navigateBackToHome)
                    .transition(isNavigatingBack ? .slideRightToLeft : .slideLeftToRight)
            case .silverLeague:
                StreakView(navigateBack: navigateBackToHome)
                    .transition(isNavigatingBack ? .slideRightToLeft : .slideLeftToRight)
            case .analytics:
                AnalyticsView(segmentChangedClosure: {_ in }, navigateBack: navigateBackToHome)
                    .transition(isNavigatingBack ? .slideRightToLeft : .slideLeftToRight)
            case .streak:
                StreakView(navigateBack: navigateBackToHome)
                    .transition(isNavigatingBack ? .slideRightToLeft : .slideLeftToRight)
            }
        }
        .animation(.easeInOut, value: currentView)
    }
    
    var bodyView: some View {
        VStack {
            VerticalSpace(size: UIHelper.verticalSmall)
            Image(.banner).resizable().frame(height: screenHeight * 0.1)
            VerticalSpace(size: UIHelper.verticalXSmall)
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(Array(items.enumerated()), id: \.element) { index, item in
                    VStack {
                        switch index {
                        case 0:
                            EnergyPodsGridView(epWeekValue: 3.66, epLifealue: 1128.66).frame(width: screenWidth * 0.48, height: screenHeight * 0.32).clipped().onTapGesture {
                                navigateToView(.energyPod)
                            }
                        case 1:
                            LeagueGridView(leaguePoints: 185, leaguePosition: 0, seasonPosition: 0, seasonNumber: 0).frame(width: screenWidth * 0.48, height: screenHeight * 0.32).clipped().onTapGesture {
                                navigateToView(.silverLeague)
                            }
                        case 2:
                            AnalyticsGridView().frame(width: screenWidth * 0.48, height: screenHeight * 0.32).clipped().onTapGesture {
                                navigateToView(.analytics)
                            }
                        case 3:
                            StreakGridView().frame(width: screenWidth * 0.48, height: screenHeight * 0.32).clipped().onTapGesture {
                                navigateToView(.streak)
                            }
                        default:
                            Text("")
                        }
                    }
                }
                VerticalSpace(size: UIHelper.verticalXSmall)
            }
            
        }
        .padding(.horizontal,15)
        .frame(maxWidth: UIHelper.screenWidth, maxHeight: UIHelper.screenHeight, alignment: .top).background(.white)
      
    }
    
    // Navigation functions
    func navigateToView(_ view: HomeViewType) {
        isNavigatingBack = false
        currentView = view
    }
    
    func navigateBackToHome() {
        isNavigatingBack = true
        currentView = .home
    }
}


extension AnyTransition {
    static var slideLeftToRight: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading)
        )
    }
    
    static var slideRightToLeft: AnyTransition {
        AnyTransition.asymmetric(
            insertion: .move(edge: .trailing),
            removal: .move(edge: .leading)
        )
    }
}


#Preview {
    HomeView()
}
enum HomeViewType {
case home, energyPod, silverLeague, analytics, streak
}
