//
//  add_border.swift
//  SIM App
//
//  Created by Naina Maharjan on 20/05/2024.
//

import SwiftUI

// Extend the View to add a custom border with specified color, width, and corner radius
extension View {
    // Define the function `addBorder` that adds a border to the view
    // Parameters:
    // - content: The color or shape style of the border
    // - width: The width of the border (default is 1)
    // - cornerRadius: The corner radius for the rounded corners
    public func addBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat) -> some View where S: ShapeStyle {
        // Create a rounded rectangle with the specified corner radius
        let roundedRect = RoundedRectangle(cornerRadius: cornerRadius)
        
        // Return the view with the added border
        // 1. `clipShape(roundedRect)`: Clips the view to the shape of the rounded rectangle
        // 2. `overlay(roundedRect.strokeBorder(content, lineWidth: width))`: Adds an overlay of the rounded rectangle with the specified border style and width
        return clipShape(roundedRect)
            .overlay(roundedRect.strokeBorder(content, lineWidth: width))
    }
    
    /// Adds a circular border to the view with the specified color and width.
        /// - Parameters:
        ///   - content: The color or shape style of the border.
        ///   - width: The width of the border (default is 1).
        public func addCircularBorder<S>(_ content: S, width: CGFloat = 1) -> some View where S: ShapeStyle {
            // Create a circle shape
            let circle = Circle()
            
            // Return the view with the added circular border
            return self
                .clipShape(circle) // Clip the view to the shape of the circle
                .overlay(circle.strokeBorder(content, lineWidth: width)) // Add an overlay of the circle with the specified border style and width
        }
}
