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
    
    @Binding var language: String
    @Binding var layoutDirection: String
    
    var body: some View {
        if isPortraitPhone || isIpad {
            NavigationStack {
                GreetingsView().toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        LanguageOptionsView(language: $language, layoutDirection: $layoutDirection)
                    }
                }
            }
        } else {
            NavigationStack {
                LandscapeGreetingsView().toolbar {
                    ToolbarItem(placement: .topBarTrailing) {
                        LanguageOptionsView(language: $language, layoutDirection: $layoutDirection)
                    }
                }
            }
        }
    }
}

#Preview {
    MainView(language: .constant("en"), layoutDirection: .constant(LEFT_TO_RIGHT))
}
