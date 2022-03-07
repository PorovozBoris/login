//
//  SignupView.swift
//  Login
//
//  Created by Тима Тихонов on 21.02.22.
//

import SwiftUI

struct SignupView: View {
    @State private var name: String = "Name"
    @State private var surname: String = "Surname"
    @State private var email: String = "Email"
    @State private var password: String = "Password"
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    VStack {
                       Text("Sing Up")
                            .font(.title.bold())
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    signupForm
                    
                    passTextInfo
                    
                    GradientButton(text: "Sing up")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(40)
                .offset(y: 160)
                .edgesIgnoringSafeArea(.bottom)
                
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.secondary.opacity(0.4))
                    
                    VStack {
                        ForgotPass(text: "Log in")
                            
                    }
                }
            }
            .background(Color.white)
        }
    }
    
    var signupForm: some View {
        VStack {
            HStack {
                Image(systemName: "person.fill")
                    .padding(.leading, 2)
                    .foregroundColor(Color(red: 255/255, green: 119/255, blue: 46/255))
                TextField("Name", text: $name)
                    .foregroundColor(.gray.opacity(0.8))
                    .autocapitalization(.none)
                    .textContentType(.name)
            }
            .frame(maxHeight: 59, alignment: .leading)
            .padding(.leading, 10)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.secondary.opacity(0.2))
            HStack {
                Image(systemName: "person.fill")
                    .padding(.leading, 2)
                    .foregroundColor(Color(red: 255/255, green: 119/255, blue: 46/255))
                TextField("Surname", text: $surname)
                    .foregroundColor(.gray.opacity(0.8))
                    .autocapitalization(.none)
                    .textContentType(.name)
            }
            .frame(maxHeight: 59, alignment: .leading)
            .padding(.leading, 10)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.secondary.opacity(0.2))
            HStack {
                Image(systemName: "envelope.fill")
                    .foregroundColor(Color(red: 255/255, green: 119/255, blue: 46/255))
                TextField("Email", text: $email)
                    .foregroundColor(.gray.opacity(0.8))
                    .autocapitalization(.none)
                    .textContentType(.emailAddress)
            }
            .frame(maxHeight: 59, alignment: .leading)
            .padding(.leading, 10)
            
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.secondary.opacity(0.2))
            HStack {
                Image(systemName: "lock.fill")
                    .padding(.leading, 2)
                    .foregroundColor(Color(red: 255/255, green: 119/255, blue: 46/255))
                SecureField("Password", text: $password)
                    .foregroundColor(.gray.opacity(0.8))
                    .autocapitalization(.none)
                    .textContentType(.password)
            }
            .padding(.leading, 10)
            .frame(maxHeight: 59, alignment: .leading)
        }
        .padding(20)
        .frame(maxWidth: .infinity, alignment: .leading)
        .frame(height: 240)
        .background(Color(red: 255/255, green: 250/255, blue: 250/255))
        .cornerRadius(13)
        .shadow(color: Color(red: 94/255, green: 99/255, blue: 107/255).opacity(0.18), radius: 16, x: 0, y: 12)
    }
    
    var passTextInfo: some View {
        VStack(alignment: .leading) {
            Text("Use 8 or more characters with a mix")
                .font(.subheadline)
                .foregroundColor(Color(red: 255/255, green: 59/255, blue: 78/255).opacity(0.60))
            Text("of letters, numbers & sumbols")
                .font(.subheadline)
                .foregroundColor(Color(red: 255/255, green: 59/255, blue: 78/255).opacity(0.60))
        }
        .padding(.top, 10)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
