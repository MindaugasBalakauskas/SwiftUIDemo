//
//  FruitListSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 10/01/2023.
//

import SwiftUI

struct FruitListSwiftUIView: View {
    
    @StateObject var viewModel: FruitsViewModel
    
    var body: some View {
        List {
            Section {
            ForEach(viewModel.fruits) {
                fruit in
                NavigationLink {
                    DetailsFruitsSwiftUIView(fruitName: fruit.name, fruitGenus: fruit.genus, fruitFamily: fruit.family, fruitOrder: fruit.order,fruitCarbs: fruit.nutritions.carbohydrates, fruitProtein: fruit.nutritions.protein,fruitFat: fruit.nutritions.fat, fruitCalories: fruit.nutritions.calories, fruitSugar: fruit.nutritions.sugar)
                }label: {
                    ListCell(cellData: fruit.name)
                }
            }
            } header: {
                Text("Fruits List")
            }
        } .onAppear(){
            viewModel.getDataForFruits()
        }
    }
        
}

struct FruitListSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        FruitListSwiftUIView(viewModel: FruitsViewModel(networkManager: NetworkManager())) // Better to use FakeNetworkManager
    }
}
