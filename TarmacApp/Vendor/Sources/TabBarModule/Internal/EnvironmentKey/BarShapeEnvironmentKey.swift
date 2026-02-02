//
//  BarShapeEnvironmentKey.swift
//
//
//  Created by Zijie on 18.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct BarShapeEnvironmentKey: EnvironmentKey {
    static var defaultValue: (any Shape)? { nil }
}

extension EnvironmentValues {
    var tabBarShape: (any Shape)? {
        get { self[BarShapeEnvironmentKey.self] }
        set { self[BarShapeEnvironmentKey.self] = newValue }
    }
}
