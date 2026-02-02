//
//  bottom_border.swift
//  SIM App
//
//  Created by Rajan Maharjan on 23/05/2024.
//

import SwiftUI
extension View {
    func border(width: CGFloat, edges: [Edge], color: SwiftUI.Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}
