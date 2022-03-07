//
//  ResetView.swift
//  Login
//
//  Created by Тима Тихонов on 21.02.22.
//

import SwiftUI

struct ResetView: View {
    @State private var email: String = "Email"
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Text("Reset password")
                        .font(.title.bold())
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        Image(systemName: "envelope.fill")
                            .padding(.leading, 2)
                            .foregroundColor(Color(red: 255/255, green: 119/255, blue: 46/255))
                        TextField("Email", text: $email)
                            .foregroundColor(.gray.opacity(0.8))
                            .autocapitalization(.none)
                            .textContentType(.name)
                        
                    
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color(red: 255/255, green: 250/255, blue: 250/255))
                    .cornerRadius(13)
                    .shadow(color: Color(red: 94/255, green: 99/255, blue: 107/255).opacity(0.18), radius: 16, x: 0, y: 12)
                        
                    VStack {
                        Text("Enter the email of your account, and we'll email you a link to reset your password")
                            .font(.subheadline)
                            .foregroundColor(Color(red: 255/255, green: 59/255, blue: 78/255).opacity(0.60))
                    }
                    .padding(.top, 10)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    GradientButton(text: "Reset")
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity ,alignment: .leading)
                .padding(40)
            }
        }
        .overlay(
            Button {
                
            } label: {
                Image(systemName: "xmark")
                    .font(.body.weight(.bold))
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(Color.white, in: Rectangle())
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            }
            .shadow(color: Color(red: 94/255, green: 99/255, blue: 107/255).opacity(0.18), radius: 16, x: 0, y: 12)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding(20)
            .padding(.top, 16)
            .ignoresSafeArea()
        )
    }
}

struct ResetView_Previews: PreviewProvider {
    static var previews: some View {
        ResetView()
    }
}
