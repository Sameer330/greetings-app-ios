//
//  MessagesView.swift
//  Greetings
//
//  Created by Sameer Ankalagi on 25/10/24.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello, there!", color: .newRed),
        .init(text: "I just", color: .myGrey),
        .init(text: "Started learning", color: .myGreen),
        .init(text: "SwiftUI Framework", color: .newYellow),
        .init(text: "Welcome to iOS Development", color: .newPurple),
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
