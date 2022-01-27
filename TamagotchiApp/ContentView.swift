//
//  ContentView.swift
//  TamagotchiApp
//
//  Created by Thomson, Jamie (NA) on 20/01/2022.
//

import SwiftUI



struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: TamagotchiView(), label: {
                    Text("Welcome to the Tamagotchi app")
                        .font(.system(size: 20))
                        .font(.callout)
                        .fontWeight(.heavy)
                        .bold()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                }
            )}
    }
}

struct TamagotchiView: View {
    @StateObject var myTam = MyTamagotchi()
        .onReceive(timer, perform: myTam.remainingTime += 1
    var body: some View {
        VStack{
            Text(myTam.name)
            Spacer()
            Form{
                VStack(alignment: .leading){
                    Text("TimTam's:")
                        .padding()
                    Text("hunger : \(myTam.self.hunger)")
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                    Text("happiness : \(myTam.self.happiness)")
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                    Text("weight : \(myTam.self.weight)")
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .center)
                    Text("TimTam is currently \(myTam.self.currentActivity)")
                        .foregroundColor(.red)
                        .padding()
                }
            }
            Spacer()
            HStack {
                Button("Feed", action: myTam.eatSnack)
                    .padding()
                Spacer()
                Button("Play Game", action: myTam.playGame)
                    .padding()
                Spacer()
                Button("Kill Oneself", action: myTam.die)
                    .padding()
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
