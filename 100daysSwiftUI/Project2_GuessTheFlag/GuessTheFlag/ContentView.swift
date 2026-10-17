//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by 陳泓維 on 2026/10/6.
//

import SwiftUI

struct ContentView: View {
        
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "Ukraine", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        
        ZStack {
            VStack {
                Text("Tap the flag of")
                    .foregroundStyle(.white)
                
                Text(countries[correctAnswer])
                    .foregroundStyle(.white)
            }
            
            ForEach(0..<3) { number in
                Button {
                    // flag was tapped
                } label: {
                    Image(countries[number])
                }
            }
            
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
        } else {
            scoreTitle = "Wrong"
        }

        showingScore = true
    }
}

#Preview {
    ContentView()
}
