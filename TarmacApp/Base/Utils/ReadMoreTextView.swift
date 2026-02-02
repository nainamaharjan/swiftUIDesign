//
//  ReadMoreTextView.swift
//  SIM App
//
//  Created by Rajan Maharjan on 20/06/2024.
//

import SwiftUI




struct ReadMoreText: View {
    let text: String
    let lineLimit: Int
    let readMoreTextColor: Color?
    let trimCharacterFromEnd: Int?
    var fontSize: FontSize = FontSize.xsmall
    var readMoreFontSize: FontSize = FontSize.xxsmall
    @State private var isCollapsed: Bool = true
    @State private var trimmedText: String = ""
    @State private var isTextTrimmed: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            if isCollapsed && isTextTrimmed {
                Group {
                    Text(trimmedText)
                        .font(.customFont(family: .inter, weight: .w400, size: .xxxsmall))
                        .foregroundColor(AppColors.bodyTextColor)
                    +
                    Text(" Read more")
                        .font(.customFont(family: .inter, weight: .w400, size: readMoreFontSize))
                        .foregroundColor(readMoreTextColor ?? AppColors.sliderDotColor)
                }
            } else {
                BaseBodyText(content: text,fontSize: fontSize, fontWeight: .w400, textColor: AppColors.bodyTextColor)
            }
        }
        .background(
            Text(text)
                .font(.customFont(family: .inter, weight: .w400, size: .xxxsmall))
                .lineLimit(lineLimit)
                .background(GeometryReader { geometry in
                    Color.clear
                        .onAppear {
                            determineTrimmedText(for: geometry.size.width)
                        }
                })
                .hidden()
        )
    }
    
    private func determineTrimmedText(for width: CGFloat) {
        let nsText = NSString(string: text)
        let font = UIFont(name: "inter-Regular", size: 14) ?? UIFont.systemFont(ofSize: 14)
        let attributes = [NSAttributedString.Key.font: font]
        let boundingRect = nsText.boundingRect(with: CGSize(width: width, height: .greatestFiniteMagnitude), options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: attributes, context: nil)
        
        let lineHeight = font.lineHeight
        let maxLinesHeight = lineHeight * CGFloat(lineLimit)
        
        if boundingRect.height > maxLinesHeight {
            isTextTrimmed = true
            trimmedText = findTrimmedText(for: width, font: font, maxLinesHeight: maxLinesHeight)
        } else {
            isTextTrimmed = false
            trimmedText = text
        }
    }
    
    private func findTrimmedText(for width: CGFloat, font: UIFont, maxLinesHeight: CGFloat) -> String {
        var low = 0
        var high = text.count
        var mid = 0
        
        while low < high {
            mid = (low + high) / 2
            let substring = String(text.prefix(mid))
            let nsSubstring = NSString(string: substring)
            let boundingRect = nsSubstring.boundingRect(with: CGSize(width: width, height: .greatestFiniteMagnitude), options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedString.Key.font: font], context: nil)
            
            if boundingRect.height <= maxLinesHeight {
                low = mid + 1
            } else {
                high = mid
            }
        }
        
        return String(text.prefix(low - (trimCharacterFromEnd ?? 15)))
    }
}
