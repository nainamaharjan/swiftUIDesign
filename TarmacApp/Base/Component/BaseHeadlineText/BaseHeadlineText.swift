/// A custom SwiftUI view that displays text with various configurable attributes.
///
/// `BaseHeadlineText` is a reusable text view component that allows customization of font family,
/// content, font size, scaling, font weight, color, text alignment, and line limit.
///
/// - Parameters:
///   - content: The text content to be displayed.
///   - fontFamily: The font family to be used for the text. Defaults to `.dmSans`.
///   - fontSize: The size of the font. Defaults to `.large`.
///   - isScaled: A Boolean value indicating whether the text should be scaled. Defaults to `true`.
///   - fontWeight: The weight of the font. Defaults to `.w100`.
///   - color: The color of the text. Defaults to `.primary`.
///   - alignment: The alignment of the text. Defaults to `.leading`.
///   - lineLimit: The maximum number of lines for the text. Defaults to `nil` (no limit).
///
/// The `body` property of the view uses a `Text` view with the provided parameters,
/// and applies the specified custom font, color, alignment, and line limit.
import SwiftUI

struct BaseHeadlineText: View {
    let fontFamily: FontFamily
    let content: String
    let fontSize: FontSize
    let isScaled: Bool
    let fontWeight: FontWeight
    let color: Color
    let alignment: TextAlignment
    let lineLimit: Int?
    
    /// Initializes a new instance of `BaseHeadlineText` with the specified parameters.
    ///
    /// - Parameters:
    ///   - content: The text content to be displayed.
    ///   - fontFamily: The font family to be used for the text. Defaults to `.dmSans`.
    ///   - fontSize: The size of the font. Defaults to `.large`.
    ///   - isScaled: A Boolean value indicating whether the text should be scaled. Defaults to `true`.
    ///   - fontWeight: The weight of the font. Defaults to `.w100`.
    ///   - color: The color of the text. Defaults to `.primary`.
    ///   - alignment: The alignment of the text. Defaults to `.leading`.
    ///   - lineLimit: The maximum number of lines for the text. Defaults to `nil` (no limit).
    init(
        content: String,
        fontFamily: FontFamily = .dmSans,
        fontSize: FontSize = .large,
        isScaled: Bool = true,
        fontWeight: FontWeight = .w700,
        color: Color = AppColors.titleTextColor,
        alignment: TextAlignment = .leading,
        lineLimit: Int? = nil
    ) {
        self.fontFamily = fontFamily
        self.content = content
        self.fontSize = fontSize
        self.isScaled = isScaled
        self.fontWeight = fontWeight
        self.color = color
        self.alignment = alignment
        self.lineLimit = lineLimit
    }
    
    var body: some View {
        Text(content)
            .font(.customFont(family: fontFamily, weight: fontWeight, size: fontSize))
            .foregroundColor(color)
            .multilineTextAlignment(alignment)
            .lineLimit(lineLimit)
    }
}

#Preview {
    BaseHeadlineText(content: "Headlin Large Text", fontFamily: .inter, fontSize: .medium, fontWeight: .w700, color: AppColors.titleTextColor )
}
