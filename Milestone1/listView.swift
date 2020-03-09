//
//  listView.swift
//  Milestone1
//
//  Created by Zac Cripps on 8/3/20.
//  Copyright © 2020 Zac Cripps. All rights reserved.
//

import SwiftUI

struct ListView: View {
    //links the struct potato so that objects can use its parameters
    var potatos: [Potato]
    
    var body: some View {
        NavigationView{
            
        List(potatos){potato in
            NavigationLink(destination: ContentView(potato: potato)){
                Section{
                    Text(potato.name)
                    
                }
            }.navigationBarTitle(Text("Potatos"))
            }
            
        }
        }
    }

struct ListView_Previews: PreviewProvider {
    //link the struct to the static view
    //creats the object with the following parameters
    static var previews: some View {
        ListView(potatos: [Potato(name: "Kipfler", family: "Sweet Potato", weight: "20grams", scienceName: "Solanum tuberosum", nutrition: "manganese, potassium and vitamin C")])
    }
}
