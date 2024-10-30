//
//  TextView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 25/10/24.
//

import SwiftUI

struct TextView: View {
    let text: LocalizedStringKey
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
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var isPortraitPhone: Bool {
        horizontalSizeClass == .compact && verticalSizeClass == .regular
    }
    
    var isIpad: Bool {
        horizontalSizeClass == .regular && verticalSizeClass == .regular
    }
    
    var font: Font {
        isIpad ? .largeTitle : .body
    }
    
    var body: some View {
        Text(text)
            .font(font)
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
        TextView(text: "Hello, there!", color: Color.purple)
        TextView(text: "Hello, there!", color: Color.red)
        TextView(text: "Hello, there!", color: Color.black)
    }
}
