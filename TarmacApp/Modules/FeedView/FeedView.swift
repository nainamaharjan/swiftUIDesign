//
//  FeedView.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import SwiftUI

struct FeedView: View {
    
//    @ObservedObject var viewModel : HomeViewModel
    var agendaTapped: (() -> Void)?
    
    var body: some View {
        VStack{
            VerticalSpace(size: UIHelper.verticalMedium)
            
            ArrowTextView().frame(maxWidth: .infinity, alignment: .leading)

            VerticalSpace(size: UIHelper.verticalSmall)
            
            List {
                ForEach(0..<5) { _ in
                    WorkoutSummaryView()
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .frame(height: UIHelper.screenHeight * 0.6)
                        .onTapGesture {
                            
                        }
                }
            }
            .listStyle(PlainListStyle())
            .background(Color.black.edgesIgnoringSafeArea(.all))
            
        }
        .padding(.horizontal,15)
        .frame(maxWidth: UIHelper.screenWidth, maxHeight: UIHelper.screenHeight, alignment: .top)
      
    }
}

#Preview {
    FeedView()
}

struct ArrowTextView: View {
    var body: some View {
        HStack {
            Image(systemName: "arrow.left")
                .font(.system(size: 24))
                .padding(.vertical, 8)
                .padding(.leading)

            Text("10 July 2024 10:30")
                .foregroundColor(.black)
                .background(.white)
                .font(.headline)
                .padding(.vertical, 8)
                .padding(.horizontal, 16)

            Image(systemName: "arrow.right")
                .font(.system(size: 24))
                .padding(.vertical, 8)
                .padding(.trailing)
        }
        
    }
}


struct WorkoutSummaryView: View {
    
    var body: some View {
        HStack(alignment: .top) {
            HorizontalSpace(size: UIHelper.horizontalSmall)
            statsView
            HorizontalSpace(size: UIHelper.horizontalSmall)
            trialView
            Spacer()
            chartView
            HorizontalSpace(size: UIHelper.horizontalSmall)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
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
        .background(Color.black).padding(.horizontal, 40).frame(width: UIHelper.screenWidth * 0.25)
    }
    
    var chartView: some View {
        VStack(alignment: .center, spacing: 10) {
            // Power Curve
            VerticalSpace(size: UIHelper.verticalMedium)
            Image(.analyticsChart)
                .resizable()
                .scaledToFit()
                .frame(width: UIHelper.screenWidth * 0.3, height: UIHelper.screenHeight * 0.3)
    
            BaseTitleText(content: "Power Curve", fontSize: .large, fontWeight: .w900)
            VerticalSpace(size: UIHelper.verticalMedium)
        }
        .background(Color.black)
    }
    
    
    var trialView: some View {
        VStack(alignment: .center, spacing: 10) {
            
            VerticalSpace(size: UIHelper.verticalMedium)
            VStack() {
                Image(.map)
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIHelper.screenWidth * 0.22, height: UIHelper.screenHeight * 0.3)
                
                BaseTitleText(content: "Aburayama Trail", fontSize: .xmedium, fontWeight: .w900)
                
                HStack(alignment: .firstTextBaseline) {
                    
                    ProgressView(value: 44.8, total: 69.5)
                        .tint(.white)
                        .padding(.horizontal, 10)
                        .frame(width: UIHelper.screenWidth * 0.20)
                    BaseTitleText(content: "69.5 Km", fontSize: .small, fontWeight: .w600)
                }
                
                BaseTitleText(content: "44.8 Km", fontSize: .small, fontWeight: .w600)
                
            }
        }
        .padding(.horizontal, 24)
        .background(Color.black)
    }
}

struct WorkoutDetailRow: View {
    let label: String
    let value: String
    
    var body: some View {
        HStack {

            BaseTitleText(content: label, fontSize: .medium)
            Spacer()
            BaseTitleText(content: value, fontSize: .medium)
        }
        .font(.caption)
    }
}
