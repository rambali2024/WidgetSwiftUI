//
//  Superhero.swift
//  WidgetSwiftUi
//
//  Created by Rambali Kumar on 28/03/24.
//

import Foundation

struct Superhero: Identifiable, Codable{
    
    var image: String
    var name: String
    var realName: String
    var id: String{image}
}

let ironMan = Superhero(image: "ironman", name: "Iron Man", realName: "A")
let superMan = Superhero(image: "superman", name: "Super Man", realName: "B")
let batMan = Superhero(image: "batman", name: "Bat Man", realName: "C")
