//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by 陳泓維 on 2026/10/14.
//

import SwiftUI

struct ContentView: View {
    @State private var useRedText = false
    
    var body: some View {
        if useRedText {
            Button("Hello World") {
                useRedText.toggle()
            }
            .foregroundStyle(.red)
        } else {
            Button("Hello World") {
                useRedText.toggle()
            }
            .foregroundStyle(.blue)
        }
    }
}

#Preview {
    ContentView()
}
