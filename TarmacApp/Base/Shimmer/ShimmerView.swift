//
//  ShimmerView.swift
//  SIM App
//
//  Created by Rajan Maharjan on 10/07/2024.
//

import SwiftUI

struct ShimmerView: View {
    
    private var gradientColors = [
        Color(uiColor: UIColor.systemGray6),
        Color(uiColor: UIColor.systemGray5),
        Color(uiColor: UIColor.systemGray6)
    ]
    
    @State var startPoint: UnitPoint = .init(x: -1, y: 0.5)
    @State var endPoint: UnitPoint = .init(x: 0, y: 0.5)
    
    var body: some View{
        VStack {
            LinearGradient(colors: gradientColors, startPoint: startPoint, endPoint: endPoint).onAppear {
                withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: false)) {
                    startPoint = .init(x: 1.5, y: 0.5)
                    endPoint = .init(x: 2.5, y: 0.5)
                }
            }
        }.cornerRadius(16).background(Color.white.opacity(0))
    }
}

struct ShimmerView_Preview: PreviewProvider {
    static var previews: some View {
        ShimmerView()
    }
}

