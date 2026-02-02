//
//  ErrorAlertDialog.swift
//  SIM App
//
//  Created by Rajan Maharjan on 09/06/2024.
//

import SwiftUI

struct ErrorDialog: View {
    @Binding var isPresented: Bool
    var errorMessage: String
    var onDismiss: (() -> Void)?

    var body: some View {
        if isPresented {
            VStack {
                Spacer()
                VStack(spacing: 20) {
                    Text("Error")
                        .font(.headline)
                        .padding(.top)
                    Text(errorMessage)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .padding([.leading, .trailing])
                    Divider()
                    Button(action: {
                        isPresented = false
                        onDismiss?()
                    }) {
                        Text("OK")
                            .bold()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding([.leading, .trailing, .bottom])
                }
                .background(Color.white)
                .cornerRadius(12)
                .shadow(radius: 20)
                .padding()
                Spacer()
            }
            .background(Color.black.opacity(0.4).edgesIgnoringSafeArea(.all))
            .transition(.opacity)
        }
    }
}

struct ErrorDialog_Previews: PreviewProvider {
    static var previews: some View {
        ErrorDialog(isPresented: .constant(true), errorMessage: "Something went wrong.")
    }
}
