//
//  MainView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 29/10/24.
//

import SwiftUI

// Portrait = Compact width, regular height
// Landscape = Regular width, compact height
// iPad = Regular width, Regular height

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var body: some View {
        if isPortraitPhone || isIpad {
            GreetingsView()
        } else {
            LandscapeGreetingsView()
        }
    }
}

#Preview {
    MainView()
}
