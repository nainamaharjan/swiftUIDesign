//
//  base_view_model.swift
//  SIM App
//
//  Created by Naina Maharjan on 17/05/2024.
//


import Foundation
import SwiftUI


class BaseViewModel: ObservableObject{
    
//    let router: AnyRouter
//          
//      init(router: AnyRouter) {
//          self.router = router
//      }
    
    /*
     Make circular progress view with router
     */
//    func showLoading(){
//        router.showModal(destination: {
//           LoadingView()
//        })
//    }
//    
//    /*
//     Dismiss circular progress view
//     */
//    func dismissLoading(){
//        router.dismissModal()
//    }
//    
//    /*
//     Show error alert dialog
//     */
//    
//    func showErrorDialog(){
//        router.showBasicAlert(text: "Error"
//        )
//    }
//    /*
//     Navigate pop back from screen
//     */
//    func navigatePop(){
//        router.dismissScreen()
//    }
    
    func setTheme(_ theme: ThemeProtocol){
//        selectedTheme = theme
    }
    
    /*
     Function to hide keyboard
     */
    func hideKeyboard() {
     UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
 }
    
}

@ViewBuilder private var alertButtonsiOS15: some View {
    if #available(iOS 15.0, *) {
        Button(role: .none) {
            
        } label: {
            Text("Default")
        }
        Button(role: .cancel) {
            
        } label: {
            Text("Cancel")
        }
        Button(role: .destructive) {
            
        } label: {
            Text("Destructive")
        }
    } else {
        EmptyView()
    }
    
}




struct ErrorBottomSheet: View {

let errorMessage: String?
let onTap: () -> Void

var body: some View {
    VStack{
        Image("asd")
            .resizable()
            .scaledToFit()
            .frame(height: 50)
        VerticalSpace(size: UIHelper.verticalMedium)
        BaseBodyText(content: errorMessage ?? "",
                     fontSize: .xsmall,
                     fontWeight: .w400,
                     textColor:AppColors.titleTextTertiaryColor
                     
        )
        VerticalSpace(size: UIHelper.verticalSmall)
        PrimaryButton(buttonName: "OK", onTapButton: {
          onTap()
        })
    }.padding()
        .frame(height: UIHelper.screenHeight/3)
}
}
