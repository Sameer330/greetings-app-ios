//
//  TitleView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 25/10/24.
//

import SwiftUI

/// This is the title view of the app
/// Displays a title, a subtitle which randomly changes on tap
/// and has a colorful disc that rotates on tap
struct TitleView: View {
    
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        HStack {
            GreetingsTextView(subtitle: $subtitle)
            
            Spacer()
            
            RotatableCircleView()
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }.padding()
}
