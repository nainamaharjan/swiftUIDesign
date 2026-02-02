////
////  circular_image.swift
////  SIM App
////
////  Created by Naina Maharjan on 22/05/2024.
////
//
//import SwiftUI
//
//struct CircularImage: View{
//    
//     let  isNetworkImage : Bool
//    let networkImageUrl: String
//    let width: CGFloat?
//    let height: CGFloat?
//    let contentMode: ContentMode
//    let assetImage: ImageResource
//    
//    
//    init(isNetworkImage: Bool,networkImageUrl: String, width: CGFloat = UIHelper.screenHeight * 0.1 , height: CGFloat = UIHelper.screenHeight * 0.15 , contentMode: ContentMode = .fill , assetImage: ) {
//        
//        
//        self.isNetworkImage = isNetworkImage
//        self.networkImageUrl = networkImageUrl
//        self.width = width
//        self.height = height
//        self.contentMode = contentMode
//        self.assetImage = assetImage
//        
//    }
//    
//     
//    
//    var body: some View{
//        if isNetworkImage {  AsyncNetworkImage(imageUrl: networkImageUrl)
//                .clipShape(Circle())
//        }else{
//            
//            Image(assetImage)
//                .resizable()
//                .clipShape(Circle())
//                .aspectRatio(contentMode: contentMode)
//                .frame(width: width, height: height, alignment:.top)
//                
//                
//        }
//    }
//    
//}
//#Preview {
//    CircularImage(isNetworkImage: false ,networkImageUrl:"https://picsum.photos/250?image=9")
//}
