//
//  ForgotPass.swift
//  Login
//
//  Created by Тима Тихонов on 20.02.22.
//

import SwiftUI

struct ForgotPass: View {
    var text: String = ""
    
    var body: some View {
        VStack {
            Button {
                
            } label: {
                Text(text)
                    .foregroundColor(Color(red: 255/255, green: 59/255, blue: 78/255).opacity(0.58))
                    .font(.subheadline.bold())
            }
        }
        .padding(.top, 12)
    }
}

struct ForgotPass_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPass(text: "Forgot password")
    }
}
