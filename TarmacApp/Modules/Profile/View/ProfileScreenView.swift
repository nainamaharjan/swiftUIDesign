//
//  UserProfileView.swift
//  TarmacApp
//
//  Created by Personal on 8/25/24.
//
import SwiftUI

struct ProfileScreenView: View {
    
    @StateObject private var viewModel = ProfileScreenViewModel()
    var crossButtonTapped: (() -> Void)?
    
    var body: some View {
           ZStack {
               Color.cyan.ignoresSafeArea()
               
               HStack(spacing: 0) {
                   sideBarView
                   contentViewForIndex(viewModel.selectedIndex) // Render only the selected view
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
               }
               
               VStack {
                   HStack {
                       Spacer()
                       crossButton
                           .padding(.top, 20)
                           .padding(.trailing, 0)
                   }
                   Spacer()
               }
               .padding(.horizontal, 100)
           }
       }
    
    private var sideBarView: some View {
        VStack(spacing: 0) {
            VerticalSpace(size: UIHelper.verticalMedium)
            ForEach(viewModel.titleList.indices, id: \.self) { index in
                SettingTitleView(title: viewModel.titleList[index],
                                 isSelected: viewModel.selectedIndex == index) {
                    viewModel.changeSelectedIndex(index: index)
                }
                .frame(maxWidth: .infinity)
            }
            VerticalSpace(size: UIHelper.verticalMedium)
        }
        .frame(width: UIScreen.main.bounds.width * 0.25)
        .background(Color.black)
        .frame(maxHeight: .infinity)
    }
    
    private var crossButton: some View {
        Button(action: {
//            viewModel.crossButtonTapped?()
            self.crossButtonTapped?()
        }) {
            Image(systemName: "xmark")
                .font(.system(size: 40, weight: .bold))
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, alignment: .trailing) // Align to the trailing edge
        .padding(.top, 20)
    }
    
    private var rightWrapperView: some View {
        VStack {
            ForEach(viewModel.titleList.indices, id: \.self) { index in
                contentViewForIndex(index)
                    .frame(maxWidth: .infinity, maxHeight: .infinity) // Ensure it takes up the full space
                    .opacity(viewModel.selectedIndex == index ? 1 : 0)
            }
        }
        .padding(.top, 50)
        .background(Color.black)
    }
    
    @ViewBuilder
    private func contentViewForIndex(_ index: Int) -> some View {
        switch index {
        case 0:
            ProfileTypeView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case 1:
            ProfileSubView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case 2:
            DeviceConnectionView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case 3:
            DeviceConnectionView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case 4:
            DeviceConnectionView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case 5:
            DeviceConnectionView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case 6:
            LogoutConfirmationView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case 7:
            DeviceConnectionView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case 8:
            TermsOfServiceView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        case 9:
            PrivacyPolicyView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        default:
            EmptyView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}
struct SettingTitleView: View {
    let title: String
    let isSelected: Bool
    var onTap: () -> Void
    
    var body: some View {
        Button(action: onTap) {
            Text(title)
                .font(.system(size: 32))
                .fontWeight(isSelected ? .bold : .regular)
                .foregroundColor(.white)
                .padding()
                .background(isSelected ? Color.blue : Color.clear)
                .cornerRadius(8)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}


struct ProfileSubView: View {
    var body: some View {
        Text("Profile View")
            .foregroundColor(.white)
            .background(Color.black)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct DeviceConnectionView: View {
    var body: some View {
        Text("Device Connection View")
            .foregroundColor(.white)
            .background(Color.black)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// ViewModel
class ProfileScreenViewModel: ObservableObject {
    @Published var selectedIndex: Int = 0
    let titleList = ["Profile", "Records", "Friends", "Share", "User", "Account", "Logout", "Unsubscribe", "Terms", "Privacy"]
    
    var crossButtonTapped: (() -> Void)?
    
    func changeSelectedIndex(index: Int) {
        selectedIndex = index
    }
}

// Preview
struct ProfileScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreenView()
    }
}

//struct HomeView_Previews: PreviewProvider {
//    @State static var showOverlay: Bool = false // Mock binding state
//
//    static var previews: some View {
//        HomeView(showOverlay: $showOverlay)
//            .previewLayout(.sizeThatFits)
//            .padding()
//    }
//}
