//
//  hideKeyboard.swift
//  SIM App
//
//  Created by Rajan Maharjan on 02/06/2024.
//

import SwiftUI

extension View {
    func hideKeyboardWhenTappedAround() -> some View  {
        return self.onTapGesture {
            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder),
                  to: nil, from: nil, for: nil)
        }
    }
}
