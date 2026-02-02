//
//  Container.swift
//  SIM App
//
//  Created by Rajan Maharjan on 21/05/2024.
//

//import SwiftUI

//struct ContainerView<Content: View>: View{
//    let width: CGFloat
//    let height: CGFloat
//    let content: Content
//    // Custom initializer using @ViewBuilder to accept dynamic content.
//    init( width: CGFloat = .infinity, height: CGFloat = 100,@ViewBuilder content: () -> Content ) {
//        self.content = content() // Initialize the content with the provided view.
//        self.width = width
//        self.height = height
//        
//    }
//    
//    var body: some View{
//        content
//    }
//    
//}
//
//struct ContainerViews : PreviewProvider{
//    static var previews: some View {
//        ContainerView (height : 300){
//            VStack {
//                // Content of the card for the preview.
//                Text("Card Title")
//                    .font(.headline) // Set the font for the card title.
//                    .padding(.bottom, 10) // Add padding below the title.
//                Text("Card content goes here. This can be multiple lines of text or other views.")
//                    .font(.subheadline) // Set the font for the card content.
//                    .foregroundColor(.secondary) // Set the text color to secondary.
//            }.padding()
//        }
//        
//        // Adjust the preview layout to fit the content size.
//        .addBorder(AppColors.primaryColor, cornerRadius: 20)
//        .padding() // Add padding around the card in the preview.
//        
//    }
//}
