//
//  ChatBubble.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import SwiftUI

struct ChatBubble: View {
    var text: String
    var isUser: Bool
    
    var body: some View {
        HStack {
            if isUser {
                Spacer()
                Text(text)
                    .padding(10)
                    .background(Color(red: 0.10, green: 0.56, blue: 0.71))
                    .foregroundColor(.white)
                    .cornerRadius(15)
            } else {
                Text(text)
                    .padding(10)
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
                    .foregroundColor(.black)
                    .cornerRadius(15)
                Spacer()
            }
        }
    }
}


struct ChatBubble_Previews: PreviewProvider {
    static var previews: some View {
        ChatBubble(text: "Hi May How are you doing", isUser: true)
            .padding()
    }
}
