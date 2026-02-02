//
//  HomeViewModel.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import Foundation


class HomeViewModel : BaseViewModel{
    
    @Published var isMenuDrawerOpen: Bool = false
    
    @Published var isMyProfileClicked : Bool = false
    
    @Published var tabBarIndex : Int = 0
    
    @Published var isSignOutBottomSheetEnabled = false
    @Published var bookingAndRequestCount : Int?
    
    
}
