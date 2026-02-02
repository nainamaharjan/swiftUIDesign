//
//  TabbarView.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import Foundation
import SwiftUI

struct TabbarView: View {
    
    @StateObject var viewModel: HomeViewModel
    @State  var selectedTab: Int = 0
    @State private var showOverlay: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                CustomNavigationBar(title: "Custom Title", showBackButton: false, profileTapped: {
                    showOverlay.toggle()
                }).frame(maxHeight: screenHeight * 0.1)
                // Main TabView
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tag(0)// Make TabView background clear
                    
                    WorkOutView(viewModel: WorkOutViewModel())
                        .tag(1)
                    
                    FreeRideView()
                        .tag(2)
                    
                    FeedView()
                        .tag(3)
                }
                .frame(height: screenHeight * 0.8) // Extend content to bottom edge // Make sure the background is clear
                tabbarView.frame(height: screenHeight * 0.08)
            }
            
            // The sliding subview
            if showOverlay {
                VStack {
                    Spacer()
                    ProfileScreenView(crossButtonTapped: {
                        showOverlay = false
                    })
                    .frame(height: screenHeight)
                    .transition(.move(edge: .bottom))
                    .animation(.easeInOut)
                }
            }
        }
    }
    
    var tabbarView: some View {
        HStack(spacing: 0) {
            tabBarItem(iconName: .homeTabBar, title: "Home", isSelected: selectedTab == 0)
                .onTapGesture {
                    selectedTab = 0
                }
            Spacer()
            tabBarItem(iconName: .workoutTabBar, title: "Workout", isSelected: selectedTab == 1)
                .onTapGesture {
                    selectedTab = 1
                }
            Spacer()
            tabBarItem(iconName: .freeRideTabBar, title: "Freeride", isSelected: selectedTab == 2)
                .onTapGesture {
                    selectedTab = 2
                }
            Spacer()
            tabBarItem(iconName: .feedTabBar, title: "Feed", isSelected: selectedTab == 3)
                .onTapGesture {
                    selectedTab = 3
                }
        }
        .preferredColorScheme(.dark)
    }
    
    // Function to create each tab bar item
    private func tabBarItem(iconName: ImageResource, title: String, isSelected: Bool) -> some View {
        VStack(spacing: 2) {
            VerticalSpace(size: UIHelper.verticalXXXSmall)
            Image(iconName)
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(isSelected ? Color.white : Color.gray)
            BaseTitleText(content: title, fontSize: .medium, fontWeight: .w800)
            VerticalSpace(size: UIHelper.verticalXXXSmall)
        }
        .frame(maxWidth: .infinity)
        .background(isSelected ? Color.blue : Color("TabBarBackground"))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarView(viewModel: HomeViewModel())
    }
}




