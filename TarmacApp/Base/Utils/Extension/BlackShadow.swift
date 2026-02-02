//
//  white_shadow.swift
//  SIM App
//
//  Created by Rajan Maharjan on 23/05/2024.
//

import SwiftUI

extension View {
    func blackShadow(cornerRadius: CGFloat = 10) -> some View {
        self
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(Color.white)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            )
    }
}
