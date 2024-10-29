//
//  GreetingsTextView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 29/10/24.
//

import SwiftUI

struct GreetingsTextView: View {
    @Binding var subtitle: LocalizedStringKey
    
    var subtitles: [LocalizedStringKey] = [
        "Exploring iOS Programming",
        "Programing recipes",
        "Quest for knowledge",
        "Baking an app",
        "Let him cook",
        "Say my name",
    ]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text("Greetings!").font(.largeTitle).fontWeight(.semibold)
            
            Text(subtitle).font(.headline).fontWeight(.thin)
        }.onTapGesture {
            // Change subtitle
            subtitle = subtitles.randomElement() ?? subtitle
        }
    }
}

#Preview {
    GreetingsTextView(subtitle: .constant("Exploring iOS Programming"))
}
