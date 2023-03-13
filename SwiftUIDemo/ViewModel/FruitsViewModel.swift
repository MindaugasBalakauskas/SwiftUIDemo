//
//  FruitsViewModel.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 10/01/2023.
//

import Foundation

class FruitsViewModel: ObservableObject {
    
    @Published var fruits: [Fruit] = []
       
    private var networkManager: Networkable
    
    init(networkManager: Networkable) {
        self.networkManager = networkManager
    }
    
    func getDataForFruits() {
        Task {
            let url = URL(string: "https://fruityvice.com/api/fruit/all")!
            do {
                let fruitsData = try await self.networkManager.getDataFromAPI(url: url)
                let fruitsArray = try JSONDecoder().decode([Fruit].self, from: fruitsData)
                dataToPublisher(allFruits: fruitsArray)
            }catch let error {
                print(error.localizedDescription)
            }
            
        }
    }
}
extension FruitsViewModel {
    private func dataToPublisher(allFruits:[Fruit]) {
        DispatchQueue.main.async {
            self.fruits = allFruits.map {
                Fruit(genus: "\($0.genus)", name: "\($0.name)", id: ($0.id), family: "\($0.family)", order: "\($0.order)", nutritions: ($0.nutritions))
            }
        }
    }
}
