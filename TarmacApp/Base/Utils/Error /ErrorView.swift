////
////  ErrorView.swift
////  SIM App
////
////  Created by Naina Maharjan on 13/06/2024.
////
//
//import SwiftUI
//
//struct ErrorView: View {
//    let errorMessage: String?
//    let onTapRetry: () -> Void
//    let onTapBackButton: () ->Void
//    var body: some View {
//        BaseViewWithAppBar{
//            VStack{
//                VerticalSpace(size: UIHelper.verticalLarge)
//                
//                Image(.error)
//                    .resizable()
//                    .scaledToFit()
//                    .frame(height: UIHelper.screenHeight*0.2)
//                    
//                
//                
//                
//                VerticalSpace(size: UIHelper.verticalSmall)
//                
//                BaseBodyText(content: errorMessage ?? "")
//                
//                VerticalSpace(size: UIHelper.verticalSmall)
//                
//                PrimaryButton(buttonName: "Refresh", onTapButton: {
//                    onTapRetry()
//                })
//                .frame(width: UIHelper.screenWidth*0.7)
//                    .shadow(color: AppColors.primaryColor.opacity(0.4), radius: 5, x: 0, y: 5)
//            }
//            .padding(.horizontal, UIHelper.screenWidth*0.05)
//            .frame(maxWidth: UIHelper.screenWidth, maxHeight: UIHelper.screenHeight, alignment: .top)
//            .background(AppColors.whiteColor)
//            .toolbar{
//                ToolbarItem(placement: .navigation) {
//                    TitleTopAppBarView(title: "", isCircularBackButton: true) {
//                        onTapBackButton()
//                    }
//                }
//            }
//        }
//    }
//}
//
//#Preview {
//    ErrorView(errorMessage: "Error") {
//        
//    } onTapBackButton: {
//        
//    }
//
//}
