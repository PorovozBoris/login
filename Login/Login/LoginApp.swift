//
//  LoginApp.swift
//  Login
//
//  Created by Тима Тихонов on 20.02.22.
//

import SwiftUI

@main
struct LoginApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
