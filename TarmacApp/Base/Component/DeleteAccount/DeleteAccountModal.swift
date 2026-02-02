////
////  DeleteAccountModal.swift
////  SIM App
////
////  Created by Naina Maharjan on 23/06/2024.
////
//
//import SwiftUI
//
//struct DeleteAccountModal: View {
//    @StateObject var viewModel: SettingsViewModel
//    
//    var body: some View {
//        VStack (alignment: .leading){
//            VerticalSpace(size: UIHelper.verticalXXSmall)
//            BaseBodyText(content: "Are you sure you want to Delete Account?",
//                         fontSize: .xsmall,
//                         fontWeight: .w400,
//                         textColor: AppColors.titleTextTertiaryColor
//            )
//
//            VerticalSpace(size: UIHelper.verticalMedium)
//
//            HStack {
//                OutlineButton(buttonName: "Not Now", onTapButton: {
//                    viewModel.router.dismissModal()
//
//                }, icon: "",maxWidth: UIHelper.screenWidth*0.35, fontSize: .xsmall, borderColor: AppColors.bodyTextTertiaryColor, textColor:AppColors.bodyTextColor )
//             Spacer()
//                PrimaryButton(buttonName: "Delete Account", onTapButton: {
////                    viewModel.onTapOnLogout()
//                },maxWidth: UIHelper.screenWidth*0.44, fontSize: .xsmall)
//            }
//
//        }.padding(.all, UIHelper.screenWidth*0.06)
//            .frame(height: UIHelper.screenHeight / 4 , alignment: .top)
//    }
//}
//
