//
//  LoginView.swift
//  Tarmac
//
//  Created by  on 18/08/2024.
//

import SwiftUI
import SDWebImageSwiftUI

struct LoginView: View {
    
    @StateObject var viewModel: LoginViewModel
    
    @State private var showTabbarView = false
    
    @State private var isSignUpTapped = false
    
    @State private var selectedOption: String = "Stage King"
    @State private var dimentionText: String = ""
    @State private var dimentionSubText: String = ""
    
    // State to control GIF loading
    @State private var showGIF = true
    
    var body: some View {
        NavigationStack {
            ZStack{
                if showGIF {
                    AnimatedImage(name: "loginAnimated.gif")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: UIHelper.screenHeight)
                }
                HStack {
                    
                    //for login
//                                        loginView
//                                        createAccountView
                    
                    //                    for signup
                    ////                    SignUpView()
//                                        signUpView
                    //                    alreadyHaveAnAccountView
                    
                    //                    for signup code
//                                        SignUpView()
//                                        signUpCodeView
                    //                    alreadyHaveAnAccountView
                    
                    //for detail
                    detailsFormView
                    doneBtnView
                    
                }.padding(UIHelper.horizontalMedium)
            }.preferredColorScheme(.dark).navigationDestination(isPresented: $showTabbarView) {
                TabbarView(viewModel: HomeViewModel()).navigationBarHidden(true).preferredColorScheme(.dark)
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    var loginView: some View {
        VStack(alignment: .leading){
            VerticalSpace(size: UIHelper.verticalXXLarge)
            BaseTitleText(content: "Login", fontSize: .xxlarge, fontWeight: .w800, textColor: .white)
            makeEmailTextField
            VerticalSpace(size: UIHelper.verticalSmall)
            makePasswordTextField
            VerticalSpace(size: UIHelper.verticalSmall)
            HStack {
                HorizontalSpace(size: UIHelper.horizontalXXXLarge)
                HorizontalSpace(size: UIHelper.horizontalMedium)
                BaseBodyText(content: "Forget password", fontSize: .small, fontWeight: .w500, textColor: .white)
            }
            VerticalSpace(size: UIHelper.verticalSmall)
            PrimaryButton(buttonName: "LOGIN", onTapButton: {
                showGIF = false
                showTabbarView = true
            }, backgroundColor: AppColors.loginButtonColor.opacity(0.4), fontWeight: .w900,fontSize: .large, cornerRadius: 2, textColor: AppColors.loginButtonTextColor)
            authView
        }.padding(34)
    }
    
    var signUpView: some View {
        VStack(alignment: .leading){
            VerticalSpace(size: UIHelper.verticalXXLarge)
            BaseTitleText(content: "SIGN UP", fontSize: .xlarge, fontWeight: .w800, textColor: .white)
            BaseTitleText(content: "Please enter your email address.", fontSize: .medium, textColor: .white)
            signUpEmailView
        }.padding(34)
    }
    
    var signUpCodeView: some View {
        VStack(alignment: .leading){
            VerticalSpace(size: UIHelper.verticalXXLarge)
            BaseTitleText(content: "SIGN UP", fontSize: .xlarge, fontWeight: .w800, textColor: .white)
            BaseTitleText(content: "Please enter the code sent to your email.", fontSize: .medium, textColor: .white)
            codeView
        }.padding(34)
    }
    
    var detailsFormView: some View {
        VStack(alignment: .leading){
            VerticalSpace(size: UIHelper.verticalXXLarge)
            detailsView
        }
    }
    
    var signUpEmailView: some View {
        Group {
            VerticalSpace(size: UIHelper.verticalXXMedium)
            makeEmailTextField
            VerticalSpace(size: UIHelper.verticalXXMedium)
            BaseTitleText(content: "Send your credentials to your Email", fontSize: .medium, textColor: .gray)
            VerticalSpace(size: UIHelper.verticalXSmall)
            PrimaryButton(buttonName: "CONTINUE", onTapButton: {
                showGIF = false
                showTabbarView = true
            }, backgroundColor: AppColors.loginButtonColor.opacity(0.4), fontWeight: .w900,fontSize: .large, cornerRadius: 2, textColor: AppColors.loginButtonTextColor)
            authView
            
        }
    }
    
    var codeView: some View {
        Group {
            VerticalSpace(size: UIHelper.verticalXXMedium)
            codeTextField
            VerticalSpace(size: UIHelper.verticalXXMedium)
            //            BaseTitleText(content: "Send your credentials to your Email", fontSize: .medium, textColor: .white)
            PrimaryButton(buttonName: "Enter", onTapButton: {
                showGIF = false
                showTabbarView = true
            }, backgroundColor: AppColors.loginButtonColor.opacity(0.4), fontWeight: .w900,fontSize: .large, cornerRadius: 2, textColor: AppColors.loginButtonTextColor)
            authView
        }
    }
    
    var authView: some View {
        Group {
            VerticalSpace(size: UIHelper.verticalXXMedium)
            dividerView
            VerticalSpace(size: UIHelper.verticalXXMedium)
            OutlineButtonWithFrontIcon(buttonName: "LOGIN with Apple", onTapButton: {}, icon: "apple.logo",maxWidth: .infinity, fontSize: .medium, cornerRadius: 2, textColor: .white)
            VerticalSpace(size: UIHelper.verticalSmall)
            OutlineButtonWithFrontIcon(buttonName: "LOGIN with Google", onTapButton: {},icon: "apple.logo",maxWidth: .infinity, fontSize: .medium, cornerRadius: 2, textColor: .white)
        }
    }
    
    var createAccountView: some View {
        VStack(alignment: .leading){
            VerticalSpace(size: UIHelper.verticalXXXLarge)
            VerticalSpace(size: UIHelper.verticalXXXLarge)
            BaseTitleText(content: "Are your first time to TARMAC?",fontSize: .medium, fontWeight: .w500, textColor: .white)
            VerticalSpace(size: UIHelper.verticalSmall)
            PrimaryButton(buttonName: "Create Account", onTapButton: {}, backgroundColor: AppColors.createAccountButtonColor, fontWeight: .w700,fontSize: .large, cornerRadius: 2, textColor: .black)
            
        }.padding(34)
    }
    
    var detailsView: some View {
        Group {
            VerticalSpace(size: UIHelper.verticalSmall)
            textFieldView
            VerticalSpace(size: UIHelper.verticalXXMedium)
            BaseTitleText(content: "Which stage genre would you like to select?", fontSize: .medium, textColor: .white)
            VerticalSpace(size: UIHelper.verticalXSmall)
            RadioButtonGroup(items: ["Stage King", "Stage Queen", "Do Not Participate"], selected: $selectedOption)
            VerticalSpace(size: UIHelper.verticalXXMedium)
            DimensionView(mainText: "WEIGHT", subText: "-- Kg")
            DimensionView(mainText: "HEIGHT", subText: "-- cm")
            DimensionView(mainText: "FTP", subText: "-- W")
            VerticalSpace(size: UIHelper.verticalXSmall)
            DimensionView(mainText: "COUNTRY", subText: "--")
            
        }
    }
    
    var dividerView: some View {
        HStack {
            line
            HorizontalSpace(size: UIHelper.horizontalSmall)
            BaseTitleText(content: "or", fontSize: .medium, fontWeight: .w800, textColor: .white)
            HorizontalSpace(size: UIHelper.horizontalSmall)
            line
        }
        .background(Color.black)
    }
    
    var line: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
    }
    
    var makeEmailTextField: some View {
        LoginTextField(hintText: "Email", text: $viewModel.email, onSubmit: {
        }, color: .white, validation :Validator.validateEmail).keyboardType(.emailAddress)
            .autocapitalization(.none)
    }
    
    var makePasswordTextField: some View {
        LoginTextField(hintText: "Password", text: $viewModel.message, onSubmit: {
        }, color: .white, validation :Validator.validateEmpty(_:)).keyboardType(.emailAddress)
            .autocapitalization(.none)
    }
    
    var codeTextField: some View {
        LoginTextField(hintText: "Code", text: $viewModel.email, onSubmit: {
        }, color: .white, validation :Validator.validateEmail).keyboardType(.numberPad)
            .autocapitalization(.none)
    }
    
    var alreadyHaveAnAccountView: some View {
        VStack(content: {
            VerticalSpace.init(size: UIHelper.verticalXXXXLarge)
            VerticalSpace.init(size: UIHelper.verticalXXLarge)
            HStack{
                BaseTitleText(content: "Already have an account?", fontSize: .medium, fontWeight: .w800, textColor: .white)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    BaseBodyText(content: "Login", fontSize: .medium, textColor: .blue)
                })
            }.frame(width: UIHelper.screenWidth * 0.45)
        })
        
    }
    
    var doneBtnView: some View {
        VStack(content: {
            VerticalSpace.init(size: UIHelper.verticalXXXXLarge)
            VerticalSpace.init(size: UIHelper.verticalXXLarge)
            VerticalSpace.init(size: UIHelper.verticalSmall)
            PrimaryButton(buttonName: "DONE", onTapButton: {
                showGIF = false
                showTabbarView = true
            }, backgroundColor: AppColors.doneBtnTextColor, fontWeight: .w900,fontSize: .large, cornerRadius: 30, textColor: .white)
            .frame(width: 300, height: 60)
            .frame(maxWidth: .infinity, alignment: .center)
        })
        
    }
    
    var firstNameTextField: some View {
        LoginTextField(hintText: "Enter your first name", text: $viewModel.firstName, onSubmit: {
        }, color: .white, validation :Validator.validateFirstName).keyboardType(.default)
            .autocapitalization(.none)
    }
    
    var lastNameTextField: some View {
        LoginTextField(hintText: "Enter your last name", text: $viewModel.lastName, onSubmit: {
        }, color: .white, validation :Validator.validateFirstName).keyboardType(.default)
            .autocapitalization(.none)
    }
    
    var textFieldView: some View {
        HStack {
            Image(systemName: "pencil.circle.fill")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundColor(.gray)
                .padding(.trailing, 20)
            
            
            VStack {
                firstNameTextField.frame(width: 280)
                lastNameTextField.frame(width: 280)
            }
        }
    }
    
}

#Preview {
    LoginView(viewModel: LoginViewModel())
}

struct DimensionView: View {
    var mainText: String
    var subText: String
    
    var body: some View {
        HStack {
            BaseTitleText(content: mainText, fontSize: .medium, fontWeight: .w800, textColor: .gray)
            
            Spacer()
            
            BaseTitleText(content: subText, fontSize: .medium, fontWeight: .w800, textColor: .white)
            
            Image(systemName: "pencil.circle.fill")
                .resizable()
                .frame(width: 40, height: 40)
                .foregroundColor(.orange)
                .padding(.leading, 30)
            
        }
    }
}



struct RadioButtonGroup: View {
    let items: [String]
    @Binding var selected: String
    
    var body: some View {
        ForEach(items, id: \.self) { item in
            RadioButton(item: item, selected: $selected)
        }
        .padding(.leading, 20)
        .padding(10)
    }
}

struct RadioButton: View {
    let item: String
    @Binding var selected: String
    
    var body: some View {
        HStack {
            Button(action: {
                selected = item
            }) {
                HStack {
                    Image(systemName: selected == item ? "circle.fill" : "circle")
                        .foregroundColor(selected == item ? .white : .gray)
                    
                    Image(systemName: "star.fill") // Replace with your image
                        .foregroundColor(.yellow)
                    
                    Text(item)
                        .foregroundColor(.primary)
                }
            }
            .buttonStyle(PlainButtonStyle())
        }
    }
}
