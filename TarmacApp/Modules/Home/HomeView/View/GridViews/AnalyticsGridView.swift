//
//  AnalyticsView.swift
//  TarmacApp
//
//  Created by Maharjan on 25/08/2024.
//

import Foundation
import SwiftUI

struct AnalyticsGridView: View {
    var body: some View {
        ZStack {
            Image(.analyticsBackground)
                .resizable()
                .scaledToFill()
                .clipped()
                .cornerRadius(10)
            
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.white.opacity(0.3)]), startPoint: .leading, endPoint: .trailing)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                AnalyticsBodyView()
            }
        }
        .background(Color.black) // Background color similar to the image
        .frame(width: UIHelper.screenWidth * 0.48, height: UIHelper.screenHeight * 0.32)
        .shadow(radius: 5).clipped()
    }
}

struct AnalyticsGridView_Previews: PreviewProvider {
    static var previews: some View {
        AnalyticsGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}

struct AnalyticsBodyView: View {
    
    var body: some View {
        HStack(alignment: .center) {
            statsView
            HorizontalSpace(size: UIHelper.horizontalSmall)
            chartView
            HorizontalSpace(size: UIHelper.horizontalSmall)
        }
    }
    
    var statsView: some View {
        VStack(alignment: .leading, spacing: 10) {
            VerticalSpace(size: UIHelper.verticalSmall)
            // Date and Time
            HStack {
                BaseTitleText(content: "4 July 2024", fontSize: .small)
                HorizontalSpace(size: UIHelper.horizontalSmall)
                BaseTitleText(content: "10:24", fontSize: .small)
            }
            .font(.footnote)
            .foregroundColor(.white)
            VerticalSpace(size: UIHelper.verticalSmall)
            // Workout Details
            VStack(alignment: .leading, spacing: 10) {
                BaseTitleText(content: "Pink Butterfly", fontSize: .large, fontWeight: .w900)
                WorkoutDetailRow(label: "Total Distance", value: "20.25 km")
                WorkoutDetailRow(label: "Workout Time", value: "45 m 00 s")
                WorkoutDetailRow(label: "Elevation Gain", value: "85 m")
                WorkoutDetailRow(label: "Highest Elevation", value: "254 m")
                WorkoutDetailRow(label: "Average Power", value: "169 w")
                WorkoutDetailRow(label: "Total Energy", value: "456 KJ")
            }
            
        }
    }
    
    var chartView: some View {
        VStack(alignment: .center, spacing: 10) {
            // Power Curve
            VerticalSpace(size: UIHelper.verticalMedium)
            Image(.analyticsChart)
                .resizable()
                .scaledToFit().frame(width: UIHelper.screenWidth * 0.2, height: 300)
            BaseTitleText(content: "Power Curve", fontSize: .large, fontWeight: .w900)
            VerticalSpace(size: UIHelper.verticalMedium)
        }
    }
    

}
