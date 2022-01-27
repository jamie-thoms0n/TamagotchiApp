//
//  MyTamagotchi.swift
//  TamagotchiApp
//
//  Created by Thomson, Jamie (NA) on 20/01/2022.
//

import Foundation

class MyTamagotchi : ObservableObject {
    @Published var hunger: Int
    var name: String
    @Published var age: Int
    @Published var happiness : Int
    @Published var weight: Int
    @Published var isAlive: Bool
    @Published var timeLeftBusy: Int
    @Published var currentActivity : String
    let input = OptionlessInput()
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var remainingTime = 0
    
    
    init() {
        self.hunger = 2
        self.age = 0
        self.happiness = 100
        self.weight = 3
        self.isAlive = true
        self.timeLeftBusy = 0
        self.currentActivity = "not busy"
        self.name = ("TimTam")
    }
    
    
//    func thereIsTime(){
//       // Text(time)
//            .onReceive(timer, perform: myTam.remainingTime += 1
//)
//    }
    
    
    func eatSnack() {
        if hunger > 0 {
            if isAlive == true || timeLeftBusy == 0{
                hunger -= 1
                weight += 3
                timeLeftBusy += 10
                currentActivity = "eating"
            }
        }
    }
    
    func playGame() {
        if timeLeftBusy == 0 || isAlive == true {
            timeLeftBusy += 60
            currentActivity = "Im playing a game"
            weight -= 1
            happiness += 5
            hunger += 3
        }
        if weight < 0 { //this doesnt work yet
            self.die()
        }
        if hunger > 20 {
            self.die()
        }
//        if hunger == 0{
            //create a popup warning
    //}
    }
    
    func die() {
        if isAlive == true {
            isAlive = false
            happiness = 0
            hunger = 0
            weight = 0
            timeLeftBusy = 0
            currentActivity = "Dead"
            name = "RIP TimTam"
        }
    }
}
    

