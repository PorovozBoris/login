//
//  GradientButton.swift
//  Login
//
//  Created by Тима Тихонов on 20.02.22.
//

import SwiftUI

struct GradientButton: View {
    var text: String = ""
    
    var body: some View {
        Text(text)
            .font(.subheadline.bold())
            .frame(width: 122, height: 47, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [
                                            Color(red: 255/255, green: 119/255, blue: 46/255),
                                            Color(red: 255/255, green: 45/255, blue: 85/255)
                                                ]),
                                       startPoint: .topLeading,
                                       endPoint: .bottomTrailing))
            .foregroundColor(.white)
            .cornerRadius(14)
            .padding(.top, 10)
    }
}

struct GradientButton_Previews: PreviewProvider {
    static var previews: some View {
        GradientButton(text: "Login")
    }
}
