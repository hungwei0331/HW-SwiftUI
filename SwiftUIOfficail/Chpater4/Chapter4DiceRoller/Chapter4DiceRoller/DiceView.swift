//
//  DiceView.swift
//  Chapter4DiceRoller
//
//  Created by 陳泓維 on 2026/8/23.
//

import SwiftUI

struct DiceView: View {
    var numberOfPips: Int = 1
    
    var body: some View {
        Image(systemName: "die.face.\(numberOfPips)")
    }
}

#Preview {
    DiceView()
}
