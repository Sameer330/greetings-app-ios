//
//  MainView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 29/10/24.
//

import SwiftUI

// Portrait = Compact width, regular height
// Landscape = Regular width, compact height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        // Portrait mode ?
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingsView()
        } else {
            LandscapeGreetingsView()
        }
        // Landscape mode ?
    }
}

#Preview {
    MainView()
}
