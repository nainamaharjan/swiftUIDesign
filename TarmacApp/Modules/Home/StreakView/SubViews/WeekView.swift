//
//  WeekView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//

import SwiftUI

struct WeekView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("WEEK")
                .font(.system(size: 32, weight: .bold))
                .foregroundColor(.white)
            
            // Add more content here if needed
            Text("Details about the week streak")
                .font(.system(size: 16))
                .foregroundColor(.white)
        }
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView()
            .background(Color.black)
    }
}
