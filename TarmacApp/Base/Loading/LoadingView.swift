//
//  LoadingView.swift
//  SIM App
//
//  Created by Naina Maharjan on 05/06/2024.
//



import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color.black.opacity(0.5) // Semi-transparent black background
                .edgesIgnoringSafeArea(.all) // Make it cover the entire screen

            ProgressView("Loading...")
                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                .padding()
                .background(Color.black.opacity(0.7))
                .cornerRadius(10)
                .foregroundColor(.white)
        }
    }
}
