//
//  base_carousel_slider.swift
//  SIM App
//
//  Created by Naina Maharjan on 21/05/2024.
//

import SwiftUI

struct BaseCarouselSlider: View{
    let listOfImage : [String]
    let isNetworkImage: Bool
    let assetImageList : [ImageResource]
    init(listOfImage: [String] = [], assetImageList: [ImageResource] = [] , index: Int = 0 , isNetworkImage : Bool = true) {
        self.listOfImage = listOfImage
        self.isNetworkImage = isNetworkImage
        self.assetImageList = assetImageList
    }
    @State private var index = 0
    var body: some View{
        VStack(spacing: 0 ){
                    TabView(selection: $index) {
                        ForEach(0..<(isNetworkImage ? listOfImage.count : assetImageList.count), id: \.self) { index in
                            if isNetworkImage {
                                AsyncNetworkImage(imageUrl: listOfImage[index])
                                    .frame(maxWidth: .infinity, maxHeight: UIHelper.screenHeight*0.9)
                                    .cornerRadius(15)
                            }
                            else{
                                Image(assetImageList[index])
                                    .resizable()
                                    .frame(maxWidth: .infinity, maxHeight: UIHelper.screenHeight*0.9)
                                    .cornerRadius(15)
                            }

                        }
                    }
                  .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            VerticalSpace(size: UIHelper.verticalSmall)
            HStack(spacing: 4) {
                            ForEach((0..<(isNetworkImage ? listOfImage.count : assetImageList.count)), id: \.self) { index in
                                Circle()
                                    .fill(index == self.index ? AppColors.sliderDotColor : AppColors.sliderUnselectedDotColor)
                                    .frame(width: index == self.index ? 7: 5, height: index == self.index ? 7: 5)

                            }
            }
            
            
        }
   
    }
}

#Preview {
    BaseCarouselSlider(
         
        listOfImage: [
               "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
               "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
               "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
           ],
        isNetworkImage: true
    )}
