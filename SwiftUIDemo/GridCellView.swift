//
//  GridCellView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 06/01/2023.
//

import SwiftUI

struct GridCellView: View {
    let cellData: String
    
    var body: some View {
        VStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(.mint)
                .overlay(Text(cellData))
                .frame(width: 80, height: 80)
        }
        
    }
}

struct GridCellView_Previews: PreviewProvider {
    static var previews: some View {
        GridCellView(cellData: "Grid cell")
    }
}
