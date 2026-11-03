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
        VStack(spacing: 10) {
            Text("Hello World")
                .modifier(Title())
            
            Text("Hello World")
                .titleStyle()
            
            Color.blue
                .frame(width: 300, height: 200)
                .watermarked(with: "Hacking with Swift")
        }
    }
}

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.white)
            .padding()
            .background(.blue)
            .clipShape(.rect(cornerRadius: 10))
    }
}

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundStyle(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func titleStyle() -> some View {
        modifier(Title())
    }
    
    func watermarked(with text: String) -> some View {
            modifier(Watermark(text: text))
        }
}

#Preview {
    ContentView()
}
