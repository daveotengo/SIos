//
//  ChatCardView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import SwiftUI

import SwiftUI

struct ChatCardView: View {
    var recipientName: String
    var recipientImage: String
    var timeOfChat: String
    var chatCount: Int
    var lastChatItem: String
    
    var body: some View {
        HStack(spacing: 12) {
            Image(recipientImage)
                .resizable()
                .font(.title)
                .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
                .frame(width: 50, height: 50)
                .background(Color.white)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
                Text(recipientName)
                    .foregroundColor(.black)
                    .font(.headline)
                
                Text(lastChatItem)
                    .font(.body)
                    .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
                    //.padding()
              
            }
            
            Spacer()
            
            VStack{
                
                Text(timeOfChat)
                    .font(.subheadline)
                    .foregroundColor(.black)
                
                ZStack {
                    Circle()
                        .fill(Color(red: 0.10, green: 0.56, blue: 0.71))
                        .frame(width: 30, height: 30)
                    Text("\(chatCount)")
                        .font(.body)
                        .foregroundColor(.white)
                }
                
                
            }
        }
        .padding()
        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
        .cornerRadius(10)
        
      
    }
}

struct ChatCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChatCardView(
            recipientName: "John Doe",
            recipientImage: "doctor1",
            timeOfChat: "2h ago",
            chatCount: 3,
            lastChatItem: "Hey! How's it going?"
        )
        .padding()
    }
}


