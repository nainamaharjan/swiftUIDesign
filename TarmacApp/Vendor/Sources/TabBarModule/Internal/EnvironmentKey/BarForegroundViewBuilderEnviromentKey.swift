//
//  BarForegroundViewBuilderEnviromentKey.swift
//
//
//  Created by Zijie on 17.06.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct BarForegroundViewBuilderEnviromentKey: EnvironmentKey {
    static var defaultValue: (() -> AnyView)? { nil }
}

extension EnvironmentValues {
    var tabBarForegroundViewBuilder: (() -> AnyView)? {
        get { self[BarForegroundViewBuilderEnviromentKey.self] }
        set { self[BarForegroundViewBuilderEnviromentKey.self] = newValue }
    }
}
