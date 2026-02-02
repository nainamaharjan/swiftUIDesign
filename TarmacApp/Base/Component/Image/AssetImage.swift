//
//  base_asset_image.swift
//  SIM App
//
//  Created by Rajan Maharjan on 21/05/2024.
//

import SwiftUI


struct AssetImage: View{
    let width: CGFloat
    let height: CGFloat
    let imageName: ImageResource
    
    init(imageName: ImageResource, width: CGFloat = .infinity , height: CGFloat = 500) {
        self.imageName = imageName
        self.width = width
        self.height = height
        
    }
    
    var body : some View{
        Image(imageName).resizable()
            .frame(width: width, height: height).padding()
            
    }
}

//#Preview {
//    AssetImage(imageName: .onboardingImageFirst
//    )
//}
