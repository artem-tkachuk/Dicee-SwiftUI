//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Artem Tkachuk on 7/29/20.
//  Copyright © 2020 Artem Tkachuk. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var leftDiceNumber = 4
    @State var rightDiceNumber = 6
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diceeLogo")

                Spacer()

                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                
                Spacer()
                
                Button(action: {
                    self.leftDiceNumber = randomDice()
                    self.rightDiceNumber = randomDice()
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.all)
                }
                .background(Color.red)
            }
            .padding(.horizontal)
            
            
        }
    }
}

func randomDice() -> Int {
    return Int.random(in: 1...6)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

