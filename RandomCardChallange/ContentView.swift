//
//  ContentView.swift
//  RandomCardChallange
//
//  Created by Putut Yusri Bahtiar on 06/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card3"
    @State private var cpuCard = "card4"
    @State private var playerScore = 0
    @State private var cpuScore = 0

    var body: some View {
        ZStack {
            Image("background")
                .aspectRatio(contentMode: .fit)
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                    
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
                Button {
                    
                    //Random Player card
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the card
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update Score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }else if cpuRand > playerRand {
                        cpuScore += 1
                    }else {
                        playerScore += 1
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }

                Spacer()
                    
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                        Text((String(playerScore)))
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                            
                        Text(String(cpuScore))
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
