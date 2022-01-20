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
            NavigationLink(
                destination: TamagotchiView(),
                label: {
                    Text("Welcome to the Tamagotchi app")
                        .font(.system(size: 20))
                        .font(.callout)
                        .fontWeight(.heavy)
                        .bold()
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        
                })
        }
    }
}

struct TamagotchiView: View {
    var body: some View {
        Text("This is your tamagothchi.")
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
