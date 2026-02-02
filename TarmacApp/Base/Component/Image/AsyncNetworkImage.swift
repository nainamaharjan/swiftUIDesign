//
//  AsyncNetworkImage.swift
//  SIM App
//
//  Created by Naina Maharjan on 28/05/2024.
//

import SwiftUI

struct AsyncNetworkImage : View{
    let imageUrl: String
    
    var body: some View{
        AsyncImage(url: URL(string: imageUrl)) { image in
            image 
                .resizable()
        } placeholder: {
            ProgressView().clipShape(Circle())
        
        }

            
    }
}

#Preview {
    AsyncNetworkImage(imageUrl: "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg")
}
