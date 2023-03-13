//
//  ImageScreenSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 06/01/2023.
//

import SwiftUI

struct ImageScreenSwiftUIView: View {
    private var imageURL: String = "https://picsum.photos/id/237/200/300"
    var body: some View {
        VStack {
            Group {
                Image("lake").resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .padding()
                
                Divider()
                
                AsyncImage(url: URL(string: imageURL)!){
                    image in image.resizable()
                        .cornerRadius(10)
                        .aspectRatio(contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }.frame(width: 150, height: 150)
            }.padding()
        }
    }
}

struct ImageScreenSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ImageScreenSwiftUIView()
    }
}
