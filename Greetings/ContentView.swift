//
//  ContentView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 25/10/24.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
