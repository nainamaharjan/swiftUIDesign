//
//  HTMLTextView.swift
//  SIM App
//
//  Created by Rajan Maharjan on 17/06/2024.
//

import SwiftUI

// Define HTMLText struct conforming to UIViewRepresentable
struct HTMLText: UIViewRepresentable {

    var html: String
    var fontFamily: FontFamily
    var fontWeight: FontWeight
    var fontSize: FontSize
    var color: UIColor
    
    func makeUIView(context: UIViewRepresentableContext<Self>) -> UILabel {
        let label = UILabel()
        DispatchQueue.main.async {
            let data = Data(self.html.utf8)
            if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
                let mutableAttributedString = NSMutableAttributedString(attributedString: attributedString)
                
                // Apply color to the entire attributed string
                mutableAttributedString.addAttribute(.foregroundColor, value: self.color, range: NSRange(location: 0, length: mutableAttributedString.length))
                
                label.attributedText = mutableAttributedString
                if let customFont = UIFont.customFont(family: fontFamily, weight: fontWeight, size: fontSize) {
                    label.font = customFont
                }
            }
        }
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {}
}
