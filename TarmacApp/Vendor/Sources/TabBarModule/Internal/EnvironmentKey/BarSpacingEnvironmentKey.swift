//
//  BarSpacingEnvironmentKey.swift
//
//
//  Created by Zijie on 18.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct BarSpacingEnvironmentKey: EnvironmentKey {
    static var defaultValue: CGFloat? { nil }
}

extension EnvironmentValues {
    var tabBarSpacing: CGFloat? {
        get { self[BarSpacingEnvironmentKey.self] }
        set { self[BarSpacingEnvironmentKey.self] = newValue }
    }
}
