//
//  GreetingsApp.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 25/10/24.
//

import SwiftUI

@main
struct GreetingsApp: App {
//    @State private var language: String = "en"
//    @State private var languageDirection: String = LEFT_TO_RIGHT
    
    @AppStorage("language") var language: String = "en"
    @AppStorage("languageDirection") var languageDirection: String = LEFT_TO_RIGHT
    
    var layoutDirection : LayoutDirection {
        languageDirection == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    
    var body: some Scene {
        WindowGroup {
            MainView(
                language: $language, layoutDirection: $languageDirection)
            .environment(\.locale, Locale(identifier: language)).environment(\.layoutDirection, layoutDirection)
        }
    }
}
