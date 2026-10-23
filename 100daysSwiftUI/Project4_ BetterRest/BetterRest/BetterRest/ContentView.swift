//
//  ContentView.swift
//  BetterRest
//
//  Created by 陳泓維 on 2026/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    
    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            
//            DatePicker("Please enter a date", selection: $wakeUp, displayedComponents: .hourAndMinute)
            DatePicker("Please enter a date", selection: $wakeUp, in: Date.now...)
        }
        .padding()
    }
    
    func exampleDates() {
        // create a second Date instance set to one day in seconds from now
        let tomorrow = Date.now.addingTimeInterval(86400)

        // create a range from those two
        let range = Date.now...tomorrow
    }
}

#Preview {
    ContentView()
}
