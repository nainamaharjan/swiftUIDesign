//
//  EnergyPodTypeView.swift
//  TarmacApp
//
//  Created by Personal on 8/30/24.
//

import SwiftUI

struct CustomSegmentedControl: View {
    @Binding var selectedIndex: Int
    let segments: [String]
    let segmentChangedClosure: ((Int) -> Void)?
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(0..<segments.count) { index in
                Button(action: {
                    selectedIndex = index
                    segmentChangedClosure?(index)
                }) {
                    Text(segments[index])
                        .frame(maxWidth: .infinity, minHeight: 80)
                        .background(selectedIndex == index ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                }
                .buttonStyle(PlainButtonStyle())
            }
        }
    }
}

struct EnergyPodTypeView: View {
    @State private var selectedSegmentIndex = 0
    var segmentChangedClosure: ((Int) -> Void)?
    var backButtonTapped: (() -> Void)?

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            EnergyPodCustomNavbar(title: "ENERGY PODS", backButtonTapped: {
            })
            .frame(height: 80)
            .background(Color.clear)
            .padding(.bottom, 40)
            .padding(.trailing, 80)
            .padding(.top, 80)
            
            CustomSegmentedControl(
                selectedIndex: $selectedSegmentIndex,
                segments: ["WEEK", "MONTH", "YEAR"],
                segmentChangedClosure: { index in
                    segmentChangedClosure?(index)
                }
            )
            .padding(.leading, 80)
            .padding(.trailing, 80)
            
            EnergyPodPerformanceStatusView(backButtonTapped: {
                backButtonTapped?()
            })
            .padding(.leading, 80)
            .padding(.trailing, 80)
            
            Spacer()
            
            Image("analyticsChart")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.leading, 80)
                .padding(.trailing, 80)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}

struct EnergyPodTypeView_Previews: PreviewProvider {
    static var previews: some View {
        EnergyPodTypeView()
            .background(Color.white)
            .previewLayout(.sizeThatFits)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
