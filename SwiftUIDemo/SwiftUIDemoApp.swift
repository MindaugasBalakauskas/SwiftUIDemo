//
//  SwiftUIDemoApp.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 05/01/2023.
//

import SwiftUI

@main
struct SwiftUIDemoApp: App {
    @State private var email = ""
    @State private var password = ""

    var body: some Scene {
        WindowGroup {
            LoginView(emailText: $email, passwordText: $password)
        }
    }
}
