//
//  BarTransitionEnvironmentKey.swift
//
//
//  Created by Zijie on 23.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct BarTransitionEnvironmentKey: EnvironmentKey {
    static var defaultValue: AnyTransition { .identity }
}

extension EnvironmentValues {
    var tabBarTransition: AnyTransition {
        get { self[BarTransitionEnvironmentKey.self] }
        set { self[BarTransitionEnvironmentKey.self] = newValue }
    }
}
