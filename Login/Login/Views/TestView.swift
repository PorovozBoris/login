//
//  TestView.swift
//  Login
//
//  Created by Тима Тихонов on 23.02.22.
//

import SwiftUI

struct TestView: View {
    @State private var showToggle: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                if showToggle {
                    
                    LoginView()
                }
                Button {
                    showToggle.toggle()
                } label: {
                    Text("How")
                }
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
