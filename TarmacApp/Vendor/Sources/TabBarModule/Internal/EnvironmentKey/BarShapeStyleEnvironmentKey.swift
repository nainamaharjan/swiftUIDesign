//
//  BarShapeStyleEnvironmentKey.swift
//
//
//  Created by Zijie on 18.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct BarShapeStyleEnvironmentKey: EnvironmentKey {
    static var defaultValue: AnyShapeStyle { .init(Material.bar) }
}

extension EnvironmentValues {
    var tabBarShapeStyle: AnyShapeStyle {
        get { self[BarShapeStyleEnvironmentKey.self] }
        set { self[BarShapeStyleEnvironmentKey.self] = newValue }
    }
}
