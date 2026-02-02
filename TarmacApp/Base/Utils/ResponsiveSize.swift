//
//  responsive_size.swift
//  SIM App
//
//  Created by Naina Maharjan on 17/05/2024.
//

import SwiftUI
let ipadWidth = 1024.0
let ipadHeight = 768.0

func responsiveWidth(_ width: Double = ipadWidth) -> Double {
    (width / ipadWidth) * UIScreen.main.bounds.width
}

func responsiveHeight(_ height: Double = ipadHeight) -> Double {
    (height / ipadHeight) * UIScreen.main.bounds.height
}

func aspectRatio() -> Double {
    responsiveWidth() / responsiveHeight()
}
