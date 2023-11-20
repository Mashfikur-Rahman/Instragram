//
//  LoginView.swift
//  Instragram
//
//  Created by Mashfikur Rahman on 10/28/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                //   icon logo image
                Image("image11")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220, height: 100)
                
                //   user login email filed
                TextField("Enter your email", text: $email)
                    .autocapitalization(.none)
                    .modifier(IGTextFieldModifier())
                
                //   user login password field
                SecureField("Enter your password", text: $password)
                    .modifier(IGTextFieldModifier())
                
                
                
                //            forget button
                Button {
                    print("Show forgot password")
                } label: {
                    Text("Forgot Password ?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                //            login button
                Button {
                    print("Login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360, height: 45)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                .padding(.vertical)
                
                
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) -  40, height: 0.5)
                    
                    Text("or")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundColor(.gray)
                
                //            continue with facebook
                HStack{
                    Image("facebook")
                        .resizable()
                        .frame(width: 30, height: 30)
                    Text("Continue with facebook")
                        .font(.footnote)
                        .foregroundColor(Color(.systemBlue))
                        .fontWeight(.semibold)
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                NavigationLink {
                    AddEmailView()
                } label: {
                    HStack{
                        Text("Don't have ab account?")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                }
                .padding(.vertical, 16)
            }
        }
    }
}



#Preview {
    LoginView()
}
