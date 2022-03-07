//
//  FailedLogin.swift
//  Login
//
//  Created by Тима Тихонов on 21.02.22.
//

import SwiftUI

struct FailedLogin: View {
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Image(systemName: "exclamationmark.circle")
                        .resizable()
                        .frame(maxWidth: 100, maxHeight: 100)
                        .foregroundColor(Color.gray.opacity(0.5))
                        .padding()
                    
                    Text("It looks like the data is filled incorrectly. Try again.")
                        .foregroundColor(Color.gray.opacity(0.5))
                        .padding(.top)
                        .padding(.horizontal, 20)

                    
                    Text("Back")
                        .foregroundColor(Color.gray.opacity(0.5))
                        .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(Color.white)
                        .cornerRadius(14)
                        .padding(.horizontal, 40)
                        .padding(.bottom, 20)
                        .padding(.top, 20)
                        .shadow(color: Color(red: 94/255, green: 99/255, blue: 107/255).opacity(0.18), radius: 5, x: 0, y: 12)
                        
                        
                }
            }
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(35)
            .padding(40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.2))
    }
}

struct FailedLogin_Previews: PreviewProvider {
    static var previews: some View {
        FailedLogin()
    }
}
