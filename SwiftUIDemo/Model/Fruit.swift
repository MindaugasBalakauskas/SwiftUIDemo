//
//  File.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 10/01/2023.
//

import Foundation

struct Fruit: Decodable, Identifiable {
    let genus: String
    let name: String
    let id: Int
    let family: String
    let order: String
    let nutritions: Nutritions
}

struct Nutritions: Decodable {
    let carbohydrates: Double
    let protein: Double
    let fat: Double
    let calories: Int
    let sugar: Double
}
