//
//  BaseUIImage.swift
//  SIM App
//
//  Created by Rajan Maharjan on 05/06/2024.
//

import SwiftUI


struct  BaseUIImage: View{
    let uiImage: UIImage
    
    init(uiImage: UIImage) {
        self.uiImage = uiImage
    }
    
    var body: some View{
        Image(uiImage:uiImage)
            .resizable()
    }
}
