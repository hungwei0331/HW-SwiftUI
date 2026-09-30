//
//  ContentView.swift
//  WeSplit
//
//  Created by 陳泓維 on 2026/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""

    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Hello, world!")
            Text("Your name is \(name)")
        }
    }
}

#Preview {
    ContentView()
}
