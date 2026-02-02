//
//  EnergyPodsView.swift
//  TarmacApp
//
//  Created by Maharjan on 25/08/2024.
//

import SwiftUI

struct EnergyPodsGridView: View {
    
    var epWeekValue: Double?
    var epLifealue: Double?
    
    @State private var isNavigating = false
    
    var body: some View {
        ZStack {
            Image(.energyBackground)
                .resizable()
                .scaledToFill()
                .clipped()
            LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.8), Color.white.opacity(0.3)]), startPoint: .leading, endPoint: .trailing)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                VerticalSpace(size: UIHelper.verticalXMedium)
                HStack(alignment: .firstTextBaseline) {
                    Image(.energyBar) // Replace with your actual image name
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 80)
                    HorizontalSpace(size: UIHelper.horizontalSmall)
                    HStack(alignment: .firstTextBaseline) {
                        BaseTitleText(content: String(describing: epWeekValue ?? 0.0), fontSize: .xxxxlarge, fontWeight: .w900)
                        BaseTitleText(content: "ep/WEEK",fontWeight: .w900)
                    }
                }
                VerticalSpace(size: UIHelper.verticalSmall)
                HStack(alignment: .firstTextBaseline) {
                    BaseTitleText(content: "ENERGY PODS", fontFamily: .inter, fontSize: .xlarge, fontWeight: .w900)
                    HorizontalSpace(size: UIHelper.horizontalSmall)
                    HStack(alignment: .firstTextBaseline) {
                        BaseTitleText(content: String(describing: epLifealue ?? 0.0),fontSize: .xxlarge,fontWeight: .w900)
                        BaseTitleText(content: "ep/LIFE",fontWeight: .w900)
                    }
                    
                }
                
            }
        }
        .background(Color.black) // Background color similar to the image
        .frame(width: UIHelper.screenWidth * 0.48, height: UIHelper.screenHeight * 0.32)
        .shadow(radius: 5).clipped().onTapGesture {
            isNavigating = true
        }
    }
    
}

struct EnergyPodsGridView_Previews: PreviewProvider {
    static var previews: some View {
        EnergyPodsGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
