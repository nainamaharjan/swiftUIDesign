//
//  UIImageExtension.swift
//  SIM App
//
//  Created by Naina Maharjan on 05/06/2024.
//

import SwiftUI

extension UIImage {
    var isEmpty: Bool {
        return self.cgImage == nil && self.ciImage == nil
    }
}
