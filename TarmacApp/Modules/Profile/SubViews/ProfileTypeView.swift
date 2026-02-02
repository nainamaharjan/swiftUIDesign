//
//  ProfileTypeView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//

import SwiftUI

struct ProfileTypeView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 24) {
            
            HStack(alignment: .center, spacing: 20) {
                Image("recoveryImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                
                VStack(alignment: .leading, spacing: 10) {
                    Text("David Ryan")
                        .font(.system(size: 24, weight: .bold))
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Button(action: {
                }) {
                    VStack {
                        VerticalSpace(size: UIHelper.verticalMedium)
                        HStack {
                            Image(systemName: "pencil")
                            Text("EDIT PROFILE")
                                .font(.system(size: 16, weight: .bold))
                        }
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(20)
                    }
                }
                .padding(.top, 20)
            }
            
            VStack(alignment: .leading, spacing: 10) { // Reduced spacing here
                Text("Select Stage King 👑")
                    .font(.system(size: 16))
                    .foregroundColor(.white)
                
                Text("davidrian25148@dream.com")
                    .font(.system(size: 16))
                    .foregroundColor(.white)
            }
            .padding(.top, 10) //
            
            
            VStack(alignment: .leading, spacing: 10) { // Reduced spacing here
                ProfileInfoView(label: "WEIGHT", value: "75.0 Kg")
                ProfileInfoView(label: "HEIGHT", value: "180.5 cm")
                ProfileInfoView(label: "FTP", value: "165 W")
            }
            .padding(.top, 10)
            
            
            // Country Information
            HStack(spacing: 20) {
                Image("recoveryImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40, height: 40)
                
                Text("England")
                    .font(.system(size: 16))
                    .foregroundColor(.white)
            }
            
            Spacer()
        }
        .padding(20)
        .background(Color.black)
        .edgesIgnoringSafeArea(.top)
    }
}

struct ProfileInfoView: View {
    let label: String
    let value: String
    
    var body: some View {
        HStack {
            Text(label)
                .font(.system(size: 16))
                .foregroundColor(.gray)
                .frame(width: 100, alignment: .leading) 
            Text(value)
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(.white)
            Spacer()
        }
        .padding(.vertical, 5)
    }
}

struct ProfileTypeView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTypeView()
            .previewLayout(.sizeThatFits).previewInterfaceOrientation(.landscapeLeft)
    }
}
