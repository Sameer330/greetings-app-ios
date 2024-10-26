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
    let lineWidth = 15.0
    let diameter = 70.0
    
    
    @State private var subtitle = "Exploring iOS Programming"
    @State private var isRotated = false
    
    var subtitles: [String] = [
        "Exploring iOS Programming",
        "Programing recipes",
        "Quest for knowledge",
        "Baking an app",
        "Let him cook",
        "Say my name",
    ]
    
    var angle: Angle {
        isRotated ? .zero : Angle(degrees: 360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient.init(gradient: Gradient(colors: [.pink, .purple, .blue, .green, .red, .orange, .yellow]), center: .center, angle: .zero)
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings!").font(.largeTitle).fontWeight(.semibold)
                
                Text(subtitle).font(.headline).fontWeight(.thin)
            }.onTapGesture {
                // Change subtitle
                subtitle = subtitles.randomElement() ?? subtitle
            }
            
            Spacer()
            
            Circle().strokeBorder(angularGradient, lineWidth: lineWidth).rotationEffect(angle).frame(width: diameter, height: diameter).onTapGesture {
                withAnimation(Animation.spring) {
                    isRotated.toggle()
                }
            }
            
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }.padding()
}
