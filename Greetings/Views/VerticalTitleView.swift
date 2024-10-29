//
//  VerticalTitleView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 29/10/24.
//

import SwiftUI

struct VerticalTitleView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingsTextView(subtitle: $subtitle)
            
            RotatableCircleView()
            
            Spacer()
        }.padding(.vertical)
    }
}

#Preview {
    VerticalTitleView()
}
