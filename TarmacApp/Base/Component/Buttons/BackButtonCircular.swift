//
//  back_button_circular.swift
//  SIM App
//
//  Created by Naina Maharjan on 23/05/2024.
//

import SwiftUI

struct BackButton: View {
    var buttonColor: Color = AppColors.blackColor
    let isCircularBackButton: Bool
    let action: () -> Void
    
    var body: some View {
        if isCircularBackButton{
            Button(action:action) {
                       Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 10, height: 10)
                           .foregroundColor(buttonColor)
                           .padding(10)
                   }
           
                   .background(Circle().fill(AppColors.whiteColor))
                   
                   .shadow(color: .black.opacity(0.2), radius: 3)
                  
        }
        else{
            Button(action:action) {
                       Image(systemName: "arrow.left")
                    .resizable().frame(width: 20,height: 20)
                           .foregroundColor(AppColors.blackColor)
                           .padding()
                   }
                   
        }
    }
}

#Preview {
    BackButton( isCircularBackButton: false, action: {
        
    })
}
