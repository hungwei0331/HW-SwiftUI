//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by 陳泓維 on 2026/10/14.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
//    let motto1 = Text("Draco dormiens")
    let motto2 = Text("nunquam titillandus")
    
    var body: some View {
        VStack {
            motto1
                .foregroundStyle(.red)
            motto2
                .foregroundStyle(.blue)
        }
    }
    
    var motto1: some View {
        Text("Draco dormiens")
    }
    
//    var spells: some View {
//        VStack {
//            Text("Lumos")
//            Text("Obliviate")
//        }
//    }
    
//    var spells: some View {
//        Group {
//            Text("Lumos")
//            Text("Obliviate")
//        }
//    }
    
    @ViewBuilder var spells: some View {
        Text("Lumos")
        Text("Obliviate")
    }
}

#Preview {
    ContentView()
}
