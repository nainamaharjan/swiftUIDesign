//
//  digital_profile_view.swift
//  SIM App
//
//  Created by Naina Maharjan on 22/05/2024.
//

import SwiftUI
//import Kingfisher

struct DigitalProfileView: View {
    let userName, userNameAr: String
    let userType: String
    let userId: String
    let userQrText: String
    let imageURl: String?
    let seatNo: String?

    init(userName: String, userNameAr: String, userType: String, userId: String, userQrText: String, imageUrl: String?, seatNo: String?) {
        self.userName = userName
        self.userNameAr = userNameAr
        self.userType = userType
        self.userId = userId
        self.userQrText = userQrText
        self.imageURl = imageUrl
        self.seatNo = seatNo
    }

    var body: some View {
        VStack {
            VStack (spacing:-UIHelper.verticalXXSmall){
                VerticalSpace(size: UIHelper.verticalXSmall)
//                KFImage(URL(string: imageURl ?? "")).fade(duration: 0.3).resizable()
//                        .placeholder {
//                            PlaceHolderProfileImage()
//                        }
//                        .scaledToFit().clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
//                        .frame(height: UIHelper.screenHeight * 0.21)
                VerticalSpace(size: UIHelper.verticalSmall)
                BaseTitleText(content: userName,
                             fontSize: .medium,
                             fontWeight: .w500
                )
                VerticalSpace(size: UIHelper.verticalSmall)
                BaseBodyText(content: userType,
                             fontSize: .xxxsmall,
                             fontWeight: .w500,
                             textColor: AppColors.bodyTextTertiaryColor
                )

                VerticalSpace(size: UIHelper.verticalSmall)
                if userId.isEmpty == false{
                    BaseBodyText(content: userId,
                                 fontSize: .xxxsmall,
                                 fontWeight: .w500,
                                 textColor: AppColors.bodyTextTertiaryColor
                    )
                    VerticalSpace(size: UIHelper.verticalSmall)
                }
               
                if seatNo != nil && seatNo?.isEmpty == false{
                    BaseBodyText(content: seatNo ?? "",
                                 fontSize: .xxxsmall,
                                 fontWeight: .w500,
                                 textColor: AppColors.bodyTextTertiaryColor
                    )
                }
                VerticalSpace(size: UIHelper.verticalSmall)
                QRCodeGen(qrText: userQrText, height: UIHelper.screenHeight * 0.3,
                          width: UIHelper.screenWidth * 0.65
                          
                ).padding(.horizontal, UIHelper.horizontalMedium)
                VerticalSpace(size: UIHelper.verticalSmall)
            }
            .background(AppColors.whiteColor)
            .cornerRadius(20)
            .blackShadow()
        }
    }
}

#Preview {
    DigitalProfileView(
        userName: "Tassy Omah", userNameAr: "", userType: "GUEST", userId: "SIMID00369", userQrText: "Hello World", imageUrl: nil, seatNo: nil
    )
}
