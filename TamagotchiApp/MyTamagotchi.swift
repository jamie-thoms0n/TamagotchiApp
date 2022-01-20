//
//  MyTamagotchi.swift
//  TamagotchiApp
//
//  Created by Thomson, Jamie (NA) on 20/01/2022.
//

import Foundation

class MyTamagotchi : ObservableObject{
    @published var hunger: Int
    var name: String
    var age: Int
    var happiness : Int
    var busy: Bool
    var weight: Int
    var isAlive: Bool
    
    
    init(hunger: Int, name : String, age : Int, happiness : Int, busy : Bool, weight:Int, isAlive: Bool) {
        self.hunger = 2
        self.age = 0
        self.happiness = 100
        self.busy = false
        self.weight = 3
        self.isAlive = true
    }
    
        func eatSnack() {
            if hunger > 0 {
                hunger -= 1
                if isAlive == true{
                    weight += 3
                }
            }
        }
    
    
}
