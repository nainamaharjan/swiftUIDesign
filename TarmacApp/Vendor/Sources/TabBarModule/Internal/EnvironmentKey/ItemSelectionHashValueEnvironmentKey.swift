//
//  ItemSelectionHashValueEnvironmentKey.swift
//
//
//  Created by Zijie on 20.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct ItemSelectionHashValueEnvironmentKey: EnvironmentKey {
    static var defaultValue: Int? { nil }
}

extension EnvironmentValues {
    var tabItemSelectionHashValue: Int? {
        get { self[ItemSelectionHashValueEnvironmentKey.self] }
        set { self[ItemSelectionHashValueEnvironmentKey.self] = newValue }
    }
}
