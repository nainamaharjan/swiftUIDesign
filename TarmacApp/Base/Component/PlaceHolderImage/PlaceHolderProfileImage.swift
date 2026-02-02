//
//  PlaceHolderProfileImage.swift
//  SIM App
//
//  Created by Naina Maharjan on 13/07/2024.
//

import SwiftUI

struct PlaceHolderProfileImage: View {
    
    var body: some View{
        Image(systemName: "person.circle.fill").resizable()
                                        .scaledToFit()
                                        .foregroundColor(.gray)
    }
}

struct PlaceHolderProfileImage_Preview: PreviewProvider {
    static var previews: some View {
        PlaceHolderProfileImage()
    }
}
