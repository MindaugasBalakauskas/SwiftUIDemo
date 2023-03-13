//
//  GridSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 06/01/2023.
//

import SwiftUI

struct GridSwiftUIView: View {
    private var months = ["Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"]
    private var columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(months, id: \.self) { month in
                        NavigationLink {
                            DetailScreenSwiftUIView(textData: month)
                        } label: {
                            GridCellView(cellData: month)
                        }
                    }
                }
            }
        }
    }
}

struct GridSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        GridSwiftUIView()
    }
}
