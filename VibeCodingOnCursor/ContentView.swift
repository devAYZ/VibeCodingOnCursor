//
//  ContentView.swift
//  VibeCodingOnCursor
//
//  Created by Ayokunle Fatokimi on 22/08/2025.
//

import SwiftUI

struct ContentView: View {
    
    var amount = 12.0
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Text(amount, format: .currency(code: Locale.current.currency?.identifier ?? "$"))
            
            Text("Total: \(amount, format: .currency(code: Locale.current.currency?.identifier ?? "$"))")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
