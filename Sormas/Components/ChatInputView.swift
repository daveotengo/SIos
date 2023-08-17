//
//  ChatInputView.swift
//  Sormas
//
//  Created by David Oteng on 17/08/2023.
//
import SwiftUI

struct ChatInputView: View {
    @State private var message: String = ""
    
    var body: some View {
        HStack {
            Button(action: {
                // Handle emoji action
            }) {
                Image(systemName: "smiley")
                    .font(.title)
                    .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
            }
            .padding(.leading, 10)
            
            TextField("Write here", text: $message)
                .padding(.horizontal, 10)
                .padding(.vertical, 8)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)
            
            Button(action: {
                // Handle camera action
            }) {
                Image(systemName: "camera")
                    .font(.title)
                    .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
            }
            .padding(.trailing, 10)
            
            Button(action: {
                // Handle submit action
            }) {
                Image(systemName: "paperplane.fill")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color(red: 0.10, green: 0.56, blue: 0.71))
                    .clipShape(Circle())
            }
            .padding(.trailing, 10)
        }
        .padding(.vertical, 10)
        .background(Color.white)
        .shadow(radius: 2)
    }
}




struct ChatInputView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            // Your other content
            
            Spacer()
            
            ChatInputView()
        }
        .padding()
    }
}
