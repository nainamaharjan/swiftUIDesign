//
//  AnalyticsCustomNavBarView.swift
//  TarmacApp
//
//  Created by Personal on 8/31/24.
//

import Foundation
import SwiftUI

struct AnalyticsCustomNavbar: View {
    var title: String
    var backButtonTapped: (() -> Void)?
    @State private var selectedSegmentIndex = 0
    var segmentControlChanged: ((Int) -> Void)?

    private let segments = ["DATA", "POWER CURVE"]

    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    backButtonTapped?()
                }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 40, weight: .bold))
                        .foregroundColor(.white)
                }
                .padding(.leading, 20)

                Text(title)
                    .font(.system(size: 50, weight: .bold))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 8)
                    .padding(.trailing, 20)

                Spacer()
                Picker("", selection: $selectedSegmentIndex) {
                    ForEach(0..<segments.count, id: \.self) { index in
                        Text(segments[index]).tag(index)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
                .background(Color.gray)
                .cornerRadius(12)
                .onChange(of: selectedSegmentIndex) { index in
                    segmentControlChanged?(index)
                }
                .frame(width: 220, height: 45)
                .padding(.trailing, 20)
            }
            .padding(.top, 32)
            .padding(.bottom, 20)
            .background(Color.black)
        }
        .frame(height: 80)
    }
}

