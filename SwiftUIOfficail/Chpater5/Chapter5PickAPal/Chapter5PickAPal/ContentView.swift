//
//  ContentView.swift
//  Chapter5PickAPal
//
//  Created by 陳泓維 on 2026/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List {
                Text("Elisha")
                Text("Andre")
                Text("Jasmine")
                Text("Po-Chun")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
