//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by 陳泓維 on 2026/10/6.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    
    var body: some View {
        VStack {
            Button("Show Alert") {
                showingAlert = true
            }
            .alert("Important message", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
            } message: {
                Text("Please read this.")
            }
        }
    }
}

#Preview {
    ContentView()
}
