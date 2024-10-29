//
//  BackgroundView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 25/10/24.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [
            .cyan,
            .myBlue1, .myBlue2, .white
        ], startPoint: .topLeading, endPoint:
        .bottomTrailing)
        .opacity(1)
        .ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
