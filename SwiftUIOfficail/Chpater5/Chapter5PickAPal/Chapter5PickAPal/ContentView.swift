//
//  ContentView.swift
//  Chapter5PickAPal
//
//  Created by 陳泓維 on 2026/8/26.
//

import SwiftUI

struct ContentView: View {
    @State private var names: [String] = ["Elisha", "Andre", "Jasmine", "Po-Chun"]

    
    var body: some View {
        VStack {
            List {
                ForEach(names, id: \.description) { name in
                    Text(name)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
