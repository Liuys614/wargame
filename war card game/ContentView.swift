//
//  ContentView.swift
//  war card game
//
//  Created by Louis Liu on 2022/12/12.
//

import SwiftUI

struct ContentView: View {
    @State var playerRank = 1
    @State var cpuRank = 1
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    @State var playerScore = 0
    @State var cpuScore = 0
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                HStack{
                    Button {
                        deal()
                    } label: {
                        Image("button")
                    }

                }
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(.bottom, 10)
                    }
                    
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding(.bottom, 10)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
            
        }
    }
    func deal(){
        // Randomize player's and CPU's card rank
        playerRank = Int.random(in: 2...14)
        cpuRank = Int.random(in: 2...14)
        playerCard = "card" + String(playerRank)
        cpuCard = "card" + String(cpuRank)
        
        // update score
        if (playerRank > cpuRank){
            playerScore += 1
        }
        if (cpuRank > playerRank){
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
