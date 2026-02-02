//
//  WorkOutDataView.swift
//  TarmacApp
//
//  Created by Maharjan on 04/09/2024.
//

import Foundation
import SwiftUI

struct WorkOutDataView: View {
    var data: String
    var image: ImageResource
    
    var body: some View {
        HStack {
            Image(image).resizable().frame(width: 15 ,height: 15).clipped()
            BaseBodyText(content: data)
        }
    }
}
