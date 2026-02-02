//
//  list_tile_card_view.swift
//  SIM App
//
//  Created by Naina Maharjan on 23/05/2024.
//

import SwiftUI
//import Kingfisher

struct ListTileCardView: View {
    let title: String
    let subtitle: String
    let description: String
    let imageUrl: String

    init(title: String, subtitle: String, description: String, imageUrl: String) {
        self.title = title
        self.subtitle = subtitle
        self.description = description
        self.imageUrl = imageUrl
    }

    var body: some View {
        VerticalSpace(size: UIHelper.verticalSmall)
        HStack(alignment: .top) {
            if imageUrl.isEmpty {
                Circle().padding(.vertical, 20)
            } else {
//                KFImage(URL(string: imageUrl)).fade(duration: 0.25).resizable()
//                    .placeholder {
//                        PlaceHolderProfileImage()
//                    }
//                    .scaledToFit()
//                    .clipShape(Circle())
//                    .padding(.all,10)
//                    .frame(width: UIHelper.screenWidth * 0.24, height: UIHelper.screenHeight*0.15)
            }
            HorizontalSpace(size: UIHelper.horizontalSmall)
            VStack(alignment: .leading) {
                VerticalSpace(size: UIHelper.verticalXXSmall)
                BaseTitleText(content: title,
                              fontSize: .xxsmall,
                              fontWeight: .w500
                )
                VerticalSpace(size: UIHelper.verticalXXSmall)
                BaseBodyText(content: subtitle,
                             fontSize: .xxxsmall,
                             fontWeight: .w400,
                             textColor: AppColors.bodyTextTertiaryColor
                )
                .lineLimit(1)
                VerticalSpace(size: UIHelper.verticalXXSmall)
                ReadMoreText(text: description,lineLimit: 3, readMoreTextColor: AppColors.sliderDotColor, trimCharacterFromEnd: nil,
                             fontSize: .xlsmall,readMoreFontSize: .xxxsmall
                             
                )
                .lineLimit(3)
                VerticalSpace(size: UIHelper.verticalXXSmall)
            }
            .padding(.trailing, UIHelper.screenWidth*0.02)
            .frame(maxWidth: UIHelper.screenWidth * 0.8, alignment: .leading)
            
        }
        .background(AppColors.whiteColor)
        .cornerRadius(15)
    }
}

#Preview {
    ListTileCardView(
        title: "H.E. VADM. FAHAD ALGHUFAILY", subtitle: "CHAIRMAN OF THE GENERAL STAFF", description: "Lorem ipsum dolor sit amet consectetur. tortor duis tempor aenean sed. Tempus faucibus posuere dignissim Read more", imageUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg"
    )
}
