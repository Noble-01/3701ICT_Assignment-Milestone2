//
//  Potato.swift
//  Milestone1
//
//  Created by Zac Cripps on 5/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//
//the struct contains all the parameters that make for the objects in "Potato"
import Foundation
struct Potato : Identifiable{
    var id = UUID()
    let name:String
    let scienceName:String
    let family:String
    let weight: String
    let nutrition:String
    let image:String

    
    init(name:String, family:String, weight:String, scienceName:String, nutrition:String, image: String) {
        self.name = name
        self.family  = family
        self.weight = weight
        self.scienceName = scienceName
        self.nutrition = nutrition
        self.image = image
    }
}
