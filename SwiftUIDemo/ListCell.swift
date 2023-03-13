//
//  ListCell.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 10/01/2023.
//

import SwiftUI

struct ListCell: View {
    let cellData: String
    var body: some View {
        HStack {
            Image(systemName: "globe").foregroundColor(.green)
                .imageScale(.large)
            Text(cellData)
//            Button("Click Me") {
//                print(cellData)
//            }.buttonStyle(.borderless)
        }
    }
}

//struct ListCell_Previews: PreviewProvider {
//    static var previews: some View {
//        ListCell(cellData: )
//    }
//}
