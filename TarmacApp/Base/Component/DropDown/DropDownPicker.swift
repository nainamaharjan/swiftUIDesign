//
//  DropDownPicker.swift
//  SIM App
//
//  Created by Naina Maharjan on 03/06/2024.
//

import SwiftUI

enum DropDownPickerState {
    case top
    case bottom
}

struct DropDownPicker: View {
    
    @Binding var selection: String?
    var state: DropDownPickerState = .bottom
    var options: [String]
    var maxWidth: CGFloat = 180
    
    @State var showDropdown = false
    
    @SceneStorage("drop_down_zindex") private var index = 1000.0
    @State var zindex = 1000.0
    
    var body: some View {
        GeometryReader {
            let size = $0.size
            
            VStack(spacing: 0) {
                
                
              
                HStack {
                    Text(selection == nil ? "Select" : selection!)
                        .foregroundColor(selection != nil ? .black : .gray)
                    
                    
                    Spacer(minLength: 0)
                    
                    Image(systemName: state == .top ? "chevron.up" : "chevron.down")
                        .font(.title3)
                        .foregroundColor(.gray)
                        .rotationEffect(.degrees((showDropdown ? -180 : 0)))
                }
                .padding(4)
                
                .frame(maxWidth:  .infinity, maxHeight: 50)
                .background(.white)
//                .contentShape(.rect)
                .onTapGesture {
                    index += 1
                    zindex = index
                    withAnimation(.snappy) {
                        showDropdown.toggle()
                    }
                }
                .zIndex(10)
                
                if state == .bottom && showDropdown {
                    OptionsView()
                        .background(RoundedRectangle(cornerRadius: 10) // Rounded rectangle as the card background
                        .fill(Color.white) // Background color
                        .shadow(color: .black.opacity(0.2), radius: 5, x: 0, y: 5))
                }
            }
            .clipped()
            .background(.white)
            .cornerRadius(10)
//            .overlay {
//                RoundedRectangle(cornerRadius: 10)
//                    .stroke(.gray)
//            }
            .frame(maxWidth: UIHelper.screenWidth, maxHeight: size.height, alignment: state == .top ? .bottom : .top)
            
        }
        .frame( maxWidth: UIHelper.screenWidth, idealHeight: 50)
        .zIndex(zindex)
    }
    
    
    func OptionsView() -> some View {
        VStack(alignment: .leading, spacing: 0) {
            VerticalSpace(size: UIHelper.verticalSmall)
            ForEach(options, id: \.self) { option in
                Text(option)
                .foregroundStyle(selection == option ? Color.primary : Color.gray)
                .animation(.none, value: selection)
                .padding(.leading, 10)
                .frame(maxWidth: UIHelper.screenWidth, alignment: .leading)
                
                .onTapGesture {
                    withAnimation(.snappy) {
                        selection = option
                        showDropdown.toggle()
                    }
                }
                VerticalSpace(size: UIHelper.verticalXSmall)
            }
        }
        
        .transition(.move(edge: state == .top ? .bottom : .top))
        .zIndex(1)
    }
}



