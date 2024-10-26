//
//  TextView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 25/10/24.
//

import SwiftUI

struct TextView: View {
    let text: String
    @State var color: Color
    
    var colors = [
        Color.red,
        Color.blue,
        Color.yellow,
        Color.green,
        Color.gray,
        Color(red: 140/255, green: 150/255, blue: 200/255),
        Color(red: 50/255, green: 100/255, blue: 10/255),
        Color(red: 90/255, green: 200/255, blue: 210/255),
        Color(red: 250/255, green: 50/255, blue: 220/255),
    ]
    
    var body: some View {
        Text("\(text)")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding()
            .foregroundStyle(Color.white)
            .background(color)
            .clipShape(.buttonBorder)
            .shadow(radius: 40).onTapGesture {
                    // Randomly change color
                    color = colors.randomElement() ?? color
            }
    }
}

#Preview {
    VStack {
        TextView(text: "Hello There!", color: Color.purple)
        TextView(text: "Hello There!", color: Color.red)
        TextView(text: "Hello There!", color: Color.black)
    }
}
