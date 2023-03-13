//
//  DetailsFruitsSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Mindaugas Balakauskas on 10/01/2023.
//

import SwiftUI

struct DetailsFruitsSwiftUIView: View {
    let fruitName: String
    let fruitGenus: String
    let fruitFamily: String
    let fruitOrder: String
    
    let fruitCarbs: Double
    let fruitProtein: Double
    let fruitFat: Double
    let fruitCalories: Int
    let fruitSugar: Double
    
    var body: some View {
        VStack{
            Image("fruits").resizable()
                .scaledToFit()
                .cornerRadius(10)
                //.padding()
                .frame(width: 200, height: 200)
            Divider()
            Text("\((fruitName))").font(.largeTitle).padding()
            //Divider()
            Group{
                Text("Genus: \(fruitGenus)")
                Text("Family: \(fruitFamily)")
                Text("Order: \(fruitOrder)")
            }
            Divider()
            
            //Divider()
            ZStack{
                Image("teal").resizable()
                    .scaledToFit()
                    .cornerRadius(40)
                    .padding()
                    .frame(width: 300)
                VStack{
                    Text("Nutritions").font(.largeTitle).padding()
                    Group{
                        Text("Carbohydrate: \(fruitCarbs)g")
                        Text("Protein: \(fruitProtein)g")
                        Text("Fat: \(fruitFat)g")
                        Text("Calories: \(fruitCalories) kcals")
                        Text("Sugar: \(fruitSugar)g")
                    }.frame(maxWidth: 200, alignment: .leading)
                }
            }
        }
    }
}

struct DetailsFruitsSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsFruitsSwiftUIView(fruitName: "Name", fruitGenus: "", fruitFamily: "", fruitOrder: "", fruitCarbs: 0.00, fruitProtein: 0.00, fruitFat: 0.00, fruitCalories: 0, fruitSugar: 0.00)
    }
}
