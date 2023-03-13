//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 04/01/2023.
//

import SwiftUI

struct LoginView: View {
    @Binding var emailText: String
    @Binding var passwordText: String
    @State var path = [Root]()
    var body: some View {
        NavigationStack (path: $path){
            VStack {
                Text("Welcome")
                    .font(.headline)
                    .foregroundColor(.blue)
                TextField("E-mail", text: $emailText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                SecureField("Password", text: $passwordText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Button{
                    print("E-mail: " + emailText)
                    print("Pasword: " + passwordText)
                    path.append(.list)
                }label: {
                    Text("Login").frame(maxWidth: .infinity)
                } .padding()
                    .buttonStyle(.bordered)
                    .foregroundColor(.gray)
                
            }
            .padding()
            .navigationDestination(for: Root.self) {navigation in
                switch navigation {
                case .list:
                    ListSwiftUIView()
                }
            }
        }
    }
    enum Root {
        case list
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static @Binding var emailText: String = ""
//    static var previews: some View {
//        LoginView(emailText: $emailText)
//    }
//}
