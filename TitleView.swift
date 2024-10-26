//
//  TitleView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 25/10/24.
//

import SwiftUI

struct TitleView: View {
    let lineWidth = 15.0
    let diameter = 70.0
    
    @State private var isRotated = false
    
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
                
                Text("Exploring iOS Programming").font(.headline).fontWeight(.thin)
            }
            
            Spacer()
            
            Circle().strokeBorder(angularGradient, lineWidth: lineWidth).rotationEffect(angle).frame(width: diameter, height: diameter).onTapGesture {
                withAnimation(Animation.spring) {
                    isRotated.toggle()
                }
            }
            
        }.padding()
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
}
