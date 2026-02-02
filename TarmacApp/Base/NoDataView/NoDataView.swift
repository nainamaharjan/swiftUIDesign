////
////  NoDataView.swift
////  SIM App
////
////  Created by Naina Maharjan on 04/07/2024.
////
//
//import SwiftUI
//
//struct NoDataView: View {
//    
//    var onRefreshTapped : (() -> Void)?
//    
//    var body: some View {
//        VStack {
//            Spacer()
//            
//            Image(.emptyState)
//                .resizable()
//                .scaledToFit()
//                .frame(width: 200, height: 200)
//                .foregroundColor(.blue)
//            
//            Text("Oops! No data found.")
//                .font(.title3)
//                .foregroundColor(.gray)
//                .padding(.top, 20)
//            Spacer()
//            
//            Button(action: {
//                onRefreshTapped?()
//            }) {
//                Text("Refresh")
//                    .font(.headline)
//                    .foregroundColor(.white)
//                    .frame(width: 200, height: 50)
//                    .background(Color.blue)
//                    .cornerRadius(20)
//            }
//            .padding(.bottom, 50)
//        }
//        .padding()
//    }
//}
//
//struct NoDataView_Previews: PreviewProvider {
//    static var previews: some View {
//        NoDataView()
//    }
//}
