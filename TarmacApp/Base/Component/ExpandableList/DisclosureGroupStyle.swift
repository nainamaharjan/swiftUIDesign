//
//  disclosure_group_style.swift
//  SIM App
//
//  Created by Naina Maharjan on 22/05/2024.
//

import SwiftUI


struct AppDisclosureStyle: DisclosureGroupStyle {
    func makeBody(configuration: Configuration ) -> some View {
        VStack(alignment: .leading) {
            HStack {
                configuration.label .padding(.leading)
                Spacer()
                Image(systemName: "plus").padding(.trailing)
            }
            
            .tint(.primary)
            .background(AppColors.whiteColor)
            .contentShape(Rectangle())

            if configuration.isExpanded {
                configuration.content
                    
            }
        }
    }
}
