//
//  ListSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 05/01/2023.
//

import SwiftUI

struct ListSwiftUIView: View {
   
    private var weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    private var months = ["Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"]
    private var sections = ["Weekdays", "Months"]
    var body: some View {
        VStack{
            Text("List View").accessibilityLabel("Second Screen Title").padding()
            TabView {
                
                List{
                    ForEach(sections, id: \.self) { section in
                        Section(section) {
                            if section == "Weekdays" {
                                firstSection
                            } else {
                                secondSection
                            }
                        }
                    }
                    }
                .tabItem{
                    Image(systemName: "1.square")
                    Text("List View")
                }
                FruitListSwiftUIView(viewModel: FruitsViewModel(networkManager: NetworkManager()))
                .tabItem{
                    Image(systemName: "2.square")
                    Text("Fruit List View")
                }
            }
        }
    }
    
    struct ListSwiftUIView_Previews: PreviewProvider {
        static var previews: some View {
            
            ListSwiftUIView()
        }
    }
}
extension ListSwiftUIView {
    private var firstSection: some View {
        ForEach(weekdays, id: \.self) { day in
            NavigationLink {
                CustomTabSwiftUIView()
                //ImageScreenSwiftUIView()
                //WebSwiftUIView()
            } label: {
                ListCell(cellData: day)
            }
        }
    }
}
extension ListSwiftUIView {
    private var secondSection: some View {
        ForEach(months, id: \.self) { month in
            NavigationLink {
                GridSwiftUIView()
            } label: {
                HStack {
                    Image(systemName: "globe").foregroundColor(.green)
                        .imageScale(.large)
                    Text(month)
                    Button("Click Me") {
                        print(month)
                    }.buttonStyle(.borderless)
                }
            }
        }
    }
}
