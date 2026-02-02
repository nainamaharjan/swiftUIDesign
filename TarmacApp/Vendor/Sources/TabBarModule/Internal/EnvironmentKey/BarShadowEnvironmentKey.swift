//
//  BarShadowEnvironmentKey.swift
//
//
//  Created by Zijie on 18.05.2023.
 
//
//  ====================================================================================================================
//

import SwiftUI

struct BarShadowEnvironmentKey: EnvironmentKey {
    static var defaultValue: Shadow { .init(color: .clear, radius: 0, x: 0, y: 0) }
}

struct Shadow {
    let color: Color
    let radius: CGFloat
    let x: CGFloat
    let y: CGFloat

    init(color: Color, radius: CGFloat, x: CGFloat, y: CGFloat) {
        self.color = color
        self.radius = radius
        self.x = x
        self.y = y
    }
}

extension EnvironmentValues {
    var tabBarShadow: Shadow {
        get { self[BarShadowEnvironmentKey.self] }
        set { self[BarShadowEnvironmentKey.self] = newValue }
    }
}
