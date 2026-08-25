//
//  ContentView.swift
//  Chapter4DiceRoller
//
//  Created by 陳泓維 on 2026/8/21.
//

import SwiftUI

struct ContentView: View {
    var numberOfPips: Int = 1
    
    var body: some View {
        Image(systemName: "die.face.\(numberOfPips)")
    }
}

#Preview {
    ContentView()
}
