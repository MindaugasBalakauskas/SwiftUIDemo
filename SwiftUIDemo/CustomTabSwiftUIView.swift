//
//  CustomTabSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 10/01/2023.
//

import SwiftUI

struct CustomTabSwiftUIView: View {
    var body: some View {
        TabView {
            WebSwiftUIView()
                .tabItem{
                Image(systemName: "1.square")
                Text("Web View")
            }
            
            
            SwiftUIZStack()
                .tabItem{
                    Image(systemName: "2.square")
                    Text("ZStack view")
                }
            ImageScreenSwiftUIView()
                .tabItem{
                    Image(systemName: "3.square")
                    Text("Image View")
                }
        }
    }
}

struct CustomTabSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabSwiftUIView()
    }
}
