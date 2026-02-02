//
//  BarAnimationBuilderEnvironmentKey.swift
//
//
//  Created by Zijie on 23.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct BarAnimationBuilderEnvironmentKey: EnvironmentKey {
    static var defaultValue: (Bool) -> Animation? { { _ in .none } }
}

extension EnvironmentValues {
    var tabBarAnimationBuilder: (Bool) -> Animation? {
        get { self[BarAnimationBuilderEnvironmentKey.self] }
        set { self[BarAnimationBuilderEnvironmentKey.self] = newValue }
    }
}
