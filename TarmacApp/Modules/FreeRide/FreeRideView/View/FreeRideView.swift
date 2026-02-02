//
//  FreeRideView.swift
//  TarmacApp
//
//  Created by  on 19/08/2024.
//

import SwiftUI

struct FreeRideView: View {
    
//    @ObservedObject var viewModel : HomeViewModel
    var agendaTapped: (() -> Void)?
    
    var body: some View {
        VStack{
            List {
                ForEach(0..<5) { _ in
                    TrailView()
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .frame(height: UIHelper.screenHeight * 0.2)
                        .onTapGesture {
                            
                        }
                }
            }
            .listStyle(PlainListStyle())
            .background(Color.black.edgesIgnoringSafeArea(.all))
            
        }.frame(height: UIHelper.screenHeight * 0.8)
        .padding(.horizontal,15)
        .frame(maxWidth: UIHelper.screenWidth, maxHeight: UIHelper.screenHeight, alignment: .top)
      
    }
}

//struct FreeRideView_Previews: PreviewProvider {
//    static var previews: some View {
////        FreeRideView()
//    }
//}
