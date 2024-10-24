//
//  ContentView.swift
//  SantiSbustati
//
//  Created by Davide Picentino on 24/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "gift")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("E' l'ora dello sbusto!\n è l'ora del pacchetto\n che si apreeee")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
