//
//  ContentView.swift
//  Login
//
//  Created by Тима Тихонов on 20.02.22.
//

import SwiftUI
import CoreData

struct LoginView: View {
    @State private var email: String = "Email"
    @State private var password: String = "Password"
    @State private var showToggle: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                VStack(alignment: .leading) {
                    VStack {
                        LoginText
                        
                        LoginForm
                        
                        GradientButton(text: "Login")
                            .frame(maxWidth: .infinity, alignment: .leading)

                        
                        ForgotPass(text: "Forgor Password")
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .padding([.top, .horizontal], 40)
                .frame(maxWidth: .infinity, alignment: .leading)
                .offset(y: 104)
                
                VStack {
                    Spacer()
                    Rectangle()
                        .frame(height: 1)
                        .foregroundColor(.secondary.opacity(0.4))
                    
                    VStack {
                        Button{
                            showToggle.toggle()
                        } label: {
                            ForgotPass(text: "Sign Up")
                        }
                    }
                }
            }
            .background(Color.white)
            if !showToggle {
                FailedLogin()
            }
        }
    }
    
    var LoginText: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .center) {
                Image("Emblem")
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .offset(y: -90)
            Text("Enter")
                .font(.title.bold())
                .foregroundColor(.black)
                .padding(.bottom, 10)
            Text("word word")
                .font(.title.bold())
                .foregroundColor(Color(red: 255/255, green: 82/255, blue: 75/255))
            Text("word word")
                .font(.title.bold())
                .foregroundColor(Color(red: 255/255, green: 82/255, blue: 75/255))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var LoginForm: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            HStack {
                Image(systemName: "envelope.fill")
                    .foregroundColor(Color(red: 255/255, green: 119/255, blue: 46/255))
                TextField("Email", text: $email)
                    .foregroundColor(.gray.opacity(0.8))
                    .autocapitalization(.none)
                    .textContentType(.emailAddress)
            }
            .offset(y: 4)

            Spacer()
            Rectangle()
                .frame(height: 1)
                .foregroundColor(.secondary.opacity(0.2))
            Spacer()
            HStack {
                Image(systemName: "lock.fill")
                    .padding(.leading, 2)
                    .foregroundColor(Color(red: 255/255, green: 119/255, blue: 46/255))
                TextField("Password", text: $password)
                    .foregroundColor(.gray.opacity(0.8))
                    .autocapitalization(.none)
                    .textContentType(.password)
            }
            .offset(y: -4)
            Spacer()
        }
        .padding(20)
        .frame( maxWidth: .infinity, maxHeight: 140, alignment: .leading)
        .background(Color(red: 255/255, green: 250/255, blue: 250/255))
        .cornerRadius(13)
        .shadow(color: Color(red: 94/255, green: 99/255, blue: 107/255).opacity(0.18), radius: 16, x: 0, y: 12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
