//
//  NetworkManager.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 10/01/2023.
//

import Foundation

protocol Networkable {
    func getDataFromAPI(url: URL) async throws -> Data
}

class NetworkManager: Networkable{
    
    func getDataFromAPI(url: URL) async throws -> Data{
        do {
           let (data,_) = try await URLSession.shared.data(from: url)
            return data
        }catch let error{
            print(error.localizedDescription)
            throw error
        }
    }
}
