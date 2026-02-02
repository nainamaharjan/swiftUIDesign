////
////  base_list_tile.swift
////  SIM App
////
////  Created by Naina Maharjan on 23/05/2024.
////
//
//import SwiftUI
//
//struct BaseListTile: View {
//    let tileTitle: String
//    let imageResource: ImageResource
//    let action: ()-> Void
//    
//    init(tileTitle: String, imageResource: ImageResource = .arrowForward , action : @escaping ()-> Void) {
//        self.tileTitle = tileTitle
//        self.imageResource = imageResource
//        self.action = action
//    }
//    
//    var body: some View {
//        HStack{
//            BaseBodyText(content: tileTitle,
//                         fontFamily: .inter,
//                         fontSize: .xsmall,fontWeight: .w400,
//                         textColor: AppColors.bodyTextColor
//                         
//            )
//            Spacer()
//            Image(imageResource)
//        }
//        .contentShape(Rectangle()) // Makes the entire HStack area tappable
//        .onTapGesture {
//            action()
//        }
//    }
//}
//
//
