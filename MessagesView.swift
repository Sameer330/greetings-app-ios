//
//  MessagesView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 25/10/24.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello, there!", color: .red),
        .init(text: "I just", color: .blue),
        .init(text: "Started learning", color: .black),
        .init(text: "SwiftUI Framework", color: .yellow),
        .init(text: "Welcome to iOS Development", color: .purple),
    ];
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) {dataItem in  TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
