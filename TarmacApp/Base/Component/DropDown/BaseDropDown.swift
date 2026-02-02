
import SwiftUI
// DropdownOption is a structure representing an option in the dropdown.
// It conforms to the Hashable protocol to ensure it can be used in collections that require unique elements.
struct DropdownOption: Hashable {
    let key: String // Unique key identifying the option.
    let value: String // Display value of the option.

    // Equatable conformance to compare two DropdownOption instances.
    public static func == (lhs: DropdownOption, rhs: DropdownOption) -> Bool {
        return lhs.key == rhs.key // Options are equal if their keys are the same.
    }
}

// DropdownRow is a SwiftUI View representing a single row in the dropdown menu.
struct DropdownRow: View {
    var option: String // The option this row represents.
    var onOptionSelected: ((_ option: String) -> Void)? // Callback for when the option is selected.

    var body: some View {
        HStack (alignment: .firstTextBaseline) {
            // Button to handle option selection.
            Button(action: {
                if let onOptionSelected = self.onOptionSelected {
                    onOptionSelected(self.option) // Trigger the selection callback.
                }
            }) {
                // Display the option's value in a styled text.
                BaseBodyText(content: self.option.capitalized,
                             fontFamily: .dmSans,
                             fontSize: .small,
                             fontWeight: .w300
                ).foregroundColor(AppColors.bodyTextColor) // Set text color.
                
            }.frame(maxWidth: UIHelper.screenWidth, alignment: .leading)
            // Make the button take the full available width.
            // Add space between the button and the next view.
        }
    }
}

// Dropdown is a SwiftUI View representing the entire dropdown menu.
struct DropDownMenuItem: View {
    var options: [String] // Array of all options to display.
    var onOptionSelected: ((_ option: String) -> Void)? // Callback for when an option is selected.

    var body: some View {
        // ScrollView to enable scrolling if there are many options.
        ScrollView {
            VStack(alignment: .leading) {
                // Iterate over each option and create a DropdownRow for it.
                ForEach(self.options, id: \.self) { option in
                    DropdownRow(option: option, onOptionSelected: self.onOptionSelected)
                        .padding(.all, 10)
                }
            }
        }
        .frame(minHeight: UIHelper.screenHeight*0.22,maxHeight: UIHelper.screenHeight*0.5) // Set the height of the dropdown.
       
        .background(RoundedRectangle(cornerRadius: 10) // Rounded rectangle as the card background
            .fill(Color.white) // Background color
            .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5)) // Set background color.
    }
}

// DropdownSelector is a SwiftUI View that provides a button to toggle the dropdown menu.
struct BaseDropDownMenu: View {
    @SceneStorage("drop_down_zindex") private var index = 1000.0
    @State var zindex = 1000.0
    @State private var shouldShowDropdown = false // State to control the visibility of the dropdown.
    @Binding var selectedOption: String?  // State to hold the currently selected option.
    var placeholder: String // Placeholder text when no option is selected.
    var options: [String] // Array of all options to display.
    var onOptionSelected: ((_ option: String) -> Void)? // Callback for when an option is selected.
    private let buttonHeight: CGFloat = 45 // Height of the toggle button.

    
    
    var body: some View {
        // Button to toggle the dropdown menu.
        Button(action: {
            index += 1
            zindex = index
            withAnimation(.snappy) {
                self.shouldShowDropdown.toggle() // Toggle the dropdown visibility.
            }
            
        }) {
            VStack {
                HStack {
                    // Display selected option value or placeholder text.
                    BaseBodyText(content: selectedOption?.count == 0 ? placeholder : selectedOption?.capitalized ?? "",
                                 fontFamily: .dmSans,
                                 fontSize: .small,
                                 fontWeight: .w400
                                 
                    )
                    .foregroundColor(AppColors.bodyTextColor).padding(.leading ,UIHelper.horizontalXXSmall)

                    Spacer() // Add space between the text and the arrow.

                    // Arrow icon indicating dropdown state.
                    Image(systemName: self.shouldShowDropdown ? "arrowtriangle.up.fill" : "arrowtriangle.down.fill")
                        .resizable()
                        .frame(width: 9, height: 5)
                        .font(Font.system(size: 9, weight: .medium))
                        .foregroundColor(AppColors.bodyTextColor)
                        .padding(.horizontal)
                }
                // Divider line below the button.
                Rectangle()
                    .frame(height: 1)
                    .foregroundColor(AppColors.bodyTextColor)
            }
        }
        
        .cornerRadius(5) // Rounded corners for the button.
        .frame(height: self.buttonHeight) // Set the button size.
        .zIndex(zindex)
        .overlay(
            VStack {
                // Show dropdown below the button if shouldShowDropdown is true.
                if self.shouldShowDropdown {
                    Spacer(minLength: buttonHeight + 10) // Add space above the dropdown.
                    DropDownMenuItem(options: self.options, onOptionSelected: { option in
                        shouldShowDropdown = false // Hide the dropdown.
                        selectedOption = option // Update the selected option.
                        self.onOptionSelected?(option) // Trigger the selection callback.
                    })
                }
            }, alignment: .topLeading
        )
    }
}
