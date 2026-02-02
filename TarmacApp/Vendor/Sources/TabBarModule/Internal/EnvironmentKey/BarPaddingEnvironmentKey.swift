//
//  BarPaddingEnvironmentKey.swift
//
//
//  Created by Zijie on 18.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct BarPaddingEnvironmentKey: EnvironmentKey {
    static var defaultValue: EdgeInsets? { nil }
}

extension EnvironmentValues {
    var tabBarPadding: EdgeInsets? {
        get { self[BarPaddingEnvironmentKey.self] }
        set { self[BarPaddingEnvironmentKey.self] = newValue }
    }
}
