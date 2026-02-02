//
//  WorkOutView.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import SwiftUI

struct WorkOutView: View {
    
    @ObservedObject var viewModel : WorkOutViewModel
    
    let rows = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    
    var body: some View {
        GeometryReader(content: { geometry in
            let viewHeight = geometry.size.height
            let viewWidth = geometry.size.width
            VStack{
                VerticalSpace(size: UIHelper.verticalXLarge)
                WorkOutTopView()
                HStack(alignment: .top) {
                    VStack(alignment: .center) {
                        WorkOutOptionsView(title: "CLIMBING", value: "165", backgroundImage: .climbingBG).frame(height: viewHeight * 0.3)
                        WorkOutOptionsView(title: "ENDURANCE", value: "265", backgroundImage: .enduranceBG).frame(height: viewHeight * 0.3)
                        WorkOutOptionsView(title: "ATTACK", value: "362", backgroundImage: .attackBG).frame(height: viewHeight * 0.3)
                    }.frame(width: viewWidth * 0.2,height: viewHeight * 0.6)
                    HorizontalSpace(size: UIHelper.horizontalSmall)
                    ScrollView(.horizontal) {
                                LazyHGrid(rows: rows, spacing: 25) {  // Reduce spacing if necessary
                                    ForEach(viewModel.items) { item in
                                        WorkOutGridView(item: item)
                                            .frame(width: viewWidth * 0.3, height: viewHeight * 0.15) // Set fixed width and height
                                    }
                                }
                    }.frame(height: viewHeight * 0.8, alignment: .top)
                }
                VerticalSpace(size: UIHelper.verticalXLarge)
            }
            .padding(.horizontal,15).background(.black)
            .frame(maxWidth: viewWidth, maxHeight: viewHeight * 0.7)
        })
      
    }
}


#Preview {
//    WorkOutView(viewModel: WorkOutViewModel())
    TabbarView(viewModel: HomeViewModel(), selectedTab: 1)
}
