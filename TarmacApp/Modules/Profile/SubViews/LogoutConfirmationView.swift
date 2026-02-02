//
//  LogoutConfirmationView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//

import SwiftUI

struct LogoutConfirmationView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()

            VStack(spacing: 60) {
                // Icon and Message Wrapper
                HStack(spacing: 16) {
                    Image("recoveryImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)

                    Text("Are you sure you want to log out?\nYou are currently logged in as David Ryan")
                        .font(.system(size: 32))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                }

                // Logout Button
                Button(action: {
                    // Logout action
                }) {
                    Text("LOGOUT")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color(red: 201/255, green: 120/255, blue: 65/255))
                        .cornerRadius(10)
                }

                // Cancel Button
                Button(action: {
                    // Cancel action
                }) {
                    Text("CANCEL")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 200, height: 50)
                        .background(Color.clear)
                        .cornerRadius(10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.white, lineWidth: 2)
                        )
                }

                // Security Message Label
                Text("For security reasons, please close your app after logging out.")
                    .font(.system(size: 22))
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .frame(width: UIScreen.main.bounds.width * 0.8)
            .centered() // Extension to center the view
        }
    }
}

// A handy extension to center the view
extension View {
    func centered() -> some View {
        GeometryReader { geometry in
            self.position(
                x: geometry.size.width / 2,
                y: geometry.size.height / 2
            )
        }
    }
}

struct LogoutConfirmationView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutConfirmationView().previewInterfaceOrientation(.landscapeLeft)
    }
}
