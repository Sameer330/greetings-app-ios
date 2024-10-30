//
//  LanguageOptionsView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 30/10/24.
//

import SwiftUI

struct LanguageOptionsView: View {
    @Binding var language: String
    @Binding var layoutDirection: String
    
    var body: some View {
        Image(systemName: "gearshape.fill").contextMenu {
            Button("English") {
                language = "en"
                layoutDirection = LEFT_TO_RIGHT
            }
            
            Button("Hindi") {
                language = "hi"
                layoutDirection = LEFT_TO_RIGHT
            }
            
            Button("Russian") {
                language = "ru"
                layoutDirection = LEFT_TO_RIGHT
            }
            
            Button("Hebrew") {
                language = "he"
                layoutDirection = RIGHT_TO_LEFT
            }
        }
        
        
    }
}

#Preview {
    LanguageOptionsView(
        language: .constant("en"), layoutDirection: .constant(LEFT_TO_RIGHT)
    )
}
