//
//  LandscapeGreetingsView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 29/10/24.
//

import SwiftUI

struct LandscapeGreetingsView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            HStack() {
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
            }.padding()
        }
    }
}

#Preview {
    LandscapeGreetingsView()
}
