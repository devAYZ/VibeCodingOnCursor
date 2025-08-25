//
//  CurrencyLocale.swift
//  VibeCodingOnCursor
//
//  Created by Ayokunle Fatokimi on 22/08/2025.
//

import SwiftUI

struct CurrencyLocale: View {
    var amount = 12.0
    
    @Environment(\.locale) var locale
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            
            Text(amount, format: .currency(code: Locale.current.currency?.identifier ?? "$"))
            
            Text("Total: \(amount, format: .currency(code: Locale.current.currency?.identifier ?? "$")) ")
            
            Text(12, format: .currency(code: locale.currency?.identifier ?? "$"))
            
        }
        .padding()
        .onAppear {
            listIdentifiers()
        }
    }
    
    func listIdentifiers() {
        let identifiers = Locale.availableIdentifiers
        for identifier in identifiers {
            print(identifier)
        }
    }
}

#Preview {
    CurrencyLocale()
        .environment(\.locale, Locale(identifier: "sl")) // es_ES us_US ng_NG, en_GB
}
