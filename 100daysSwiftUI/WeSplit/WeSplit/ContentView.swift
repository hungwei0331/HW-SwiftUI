//
//  ContentView.swift
//  WeSplit
//
//  Created by 陳泓維 on 2026/9/23.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0

     var body: some View {
         Button("Tap Count: \(tapCount)") {
             tapCount += 1
         }
     }
}

#Preview {
    ContentView()
}
