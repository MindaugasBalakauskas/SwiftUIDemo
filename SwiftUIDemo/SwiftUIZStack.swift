//
//  SwiftUIZStack.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 10/01/2023.
//

import SwiftUI

struct SwiftUIZStack: View {
    var body: some View {
        ZStack {
            Image("lake").resizable()
            Text("The Lake").font(.title.bold()).foregroundColor(.indigo)
        }
    }
}

struct SwiftUIZStack_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIZStack()
    }
}
