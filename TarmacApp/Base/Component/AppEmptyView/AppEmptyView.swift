////
////  AppEmptyView.swift
////  SIM App
////
////  Created by Naina Maharjan on 02/07/2024.
////
//
//import SwiftUI
//
//struct AppEmptyView: View {
//    let message: String
//    var body: some View {
//        
//        VStack{
//            Spacer()
//            Image(.emptyState)
//                .resizable()
//                .scaledToFit()
//                .frame(height: UIHelper.screenHeight*0.2)
//            VerticalSpace(size: UIHelper.verticalSmall)
//            BaseBodyText(content: message, fontSize: .xxsmall)
//            Spacer()
//        }
//        .frame(maxWidth: UIHelper.screenWidth, maxHeight: UIHelper.screenHeight, alignment: .center)
//        
//    }
//}
//
//#Preview {
//    AppEmptyView(message: "No list found")
//}
