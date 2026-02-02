//
//  base_card.swift
//  SIM App
//
//  Created by Rajan Maharjan on 20/05/2024.
//
import SwiftUI

struct CardView<Content: View>: View  {
    
    let width: CGFloat
    let height: CGFloat
    let borderColor: Color
    let cornerRadius: CGFloat
    
    let content: Content // The content to be displayed inside the card, which conforms to the View protocol.

    // Custom initializer using @ViewBuilder to accept dynamic content.
    init( cornerRadius: CGFloat = 10 ,width: CGFloat = UIHelper.screenWidth, height: CGFloat = UIHelper.screenHeight * 0.3,  @ViewBuilder content: () -> Content , borderColor: Color = AppColors.borderColor ) {
        self.content = content() // Initialize the content with the provided view.
        self.cornerRadius = cornerRadius
        self.width = width
        self.height = height
        self.borderColor = borderColor
    }
    
    var body: some View {
        content // Display the dynamic content.
            .frame(width: width, height: height)
        .addBorder( borderColor, cornerRadius:cornerRadius)// Add padding inside the card.
        .background(
            RoundedRectangle(cornerRadius: cornerRadius) // Create a rounded rectangle as the card background.
                .fill(Color.white) // Set the background color to white.
//                .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5) // Add a shadow for a card-like appearance.
        )
         // Add padding outside the card.
    }
}

// Preview provider for CardView to show a preview in SwiftUI canvas.
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView( cornerRadius: 10 , height: 200) {
            VStack {
                // Content of the card for the preview.
                Text("Card Title")
                    .font(.headline) // Set the font for the card title.
                    .padding(.bottom, 10) // Add padding below the title.
                Text("Card content goes here. This can be multiple lines of text or other views.")
                    .font(.subheadline) // Set the font for the card content.
                    .foregroundColor(.secondary) // Set the text color to secondary.
            }.padding()
        }.padding()
        .previewLayout(.sizeThatFits) // Adjust the preview layout to fit the content size.
       
    }
}


