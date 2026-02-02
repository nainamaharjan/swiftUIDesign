//
//  ItemsPreferenceKey.swift
//
//
//  Created by Zijie on 18.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct ItemsPreferenceKey<Selection: Hashable>: PreferenceKey {
    static var defaultValue: [Selection] { [] }

    static func reduce(value: inout [Selection], nextValue: () -> [Selection]) {
        value.append(contentsOf: nextValue())
    }
}
