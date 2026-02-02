//
//  OrientationModifier.swift
//  SIM App
//
//  Created by Rajan Maharjan on 16/07/2024.
//

import SwiftUI

struct OrientationModifier: ViewModifier {
    @Binding var orientation: UIInterfaceOrientation
    
    func body(content: Content) -> some View {
        content
            .onAppear {
                self.lockOrientation()
            }
    }
    
    private func lockOrientation() {
        UIDevice.current.setValue(orientation.rawValue, forKey: "orientation")
        UINavigationController.attemptRotationToDeviceOrientation()
    }
}

extension View {
    func lockOrientation(_ orientation: Binding<UIInterfaceOrientation>) -> some View {
        self.modifier(OrientationModifier(orientation: orientation))
    }
}
