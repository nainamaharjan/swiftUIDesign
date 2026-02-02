//
//  TrailView.swift
//  TarmacApp
//
//  Created by Maharjan on 02/09/2024.
//

import Foundation
import SwiftUI

struct TrailView: View {
    @State private var progress: CGFloat = 0.5 // Example progress value (50%)

    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                HStack(spacing: 0) {
                    // Left Image
                    VStack {
                        HStack {
                            Image("trailImage") // Replace with your image name
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.6)
                                .clipped()
                        }
                        Rectangle().foregroundColor(.red).frame(width: geometry.size.width * 0.5, height: geometry.size.height * 0.2)
                    }

                    // Right Map Placeholder
                    Image("mapImage")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geometry.size.width * 0.15, height: geometry.size.height * 0.8)
                        .background(Color.gray.opacity(0.2))
                        .clipped()
                    Text("Start your fitness journey with beginner-triendly workouts that build a solid foundation and develop a love for cycling.")
                        .font(.title)
                        .foregroundColor(.white).frame(width: geometry.size.width * 0.35, height: geometry.size.height * 0.8).padding(10)
                }
            }
            .frame(width: geometry.size.width, height: geometry.size.height * 0.2)
            .background(Color.black) // Adjust the background color as needed
        }
    }
}

#Preview {
    TrailView()
}
