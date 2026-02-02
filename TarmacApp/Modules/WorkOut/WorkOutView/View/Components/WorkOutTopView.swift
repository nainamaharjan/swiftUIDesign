//
//  WorkOutTopView.swift
//  TarmacApp
//
//  Created by Maharjan on 04/09/2024.
//

import Foundation
import SwiftUI

struct WorkOutTopView: View {
    var body: some View {
        HStack {
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            SearchBar()
                .frame(width: screenWidth * 0.5, height: 100)
            HorizontalSpace(size: UIHelper.horizontalLarge)
            Spacer()
            DropdownButton().frame(width: screenWidth * 0.3)
            HorizontalSpace(size: UIHelper.horizontalXSmall)
            RefreshButton()
            HorizontalSpace(size: UIHelper.horizontalXSmall)
        }
        .padding()
        .background(Color.black)
    }
}

#Preview {
    WorkOutTopView()
}

struct SearchBar: View {
    @State private var searchText = ""

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(.gray)
            TextField("Search", text: $searchText)
                .foregroundColor(.white)
        }
        .padding(10)
        .background(Color.gray.opacity(0.3))
        .cornerRadius(20)
    }
}


struct DropdownButton: View {
    var body: some View {
        Button(action: {
            // Add action for dropdown here
        }) {
            HStack {
                HorizontalSpace(size: UIHelper.horizontalXSmall)
                Text("60min")
                    .foregroundColor(.black).font(.title2).padding(.horizontal, 60)
                HorizontalSpace(size: UIHelper.horizontalXSmall)
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 50, height: 50)
                    .overlay(
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                    )
            }
            .background(Color.white)
            .cornerRadius(5)
        }
    }
}

struct RefreshButton: View {
    var body: some View {
        Button(action: {
            // Add refresh action here
        }) {
            Image(systemName: "arrow.triangle.2.circlepath").resizable()
                .foregroundColor(.white).frame(width: 60, height: 60)
        }
    }
}
