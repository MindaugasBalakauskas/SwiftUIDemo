//
//  DetailScreenSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 05/01/2023.
//

import SwiftUI

struct DetailScreenSwiftUIView: View {
    let textData: String
    var body: some View {
        Text(textData.uppercased()).font(.largeTitle).padding()
    }
}

struct DetailScreenSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailScreenSwiftUIView(textData: "Hello SwiftUI")
    }
}
