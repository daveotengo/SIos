//
//  ChatView.swift
//  Sormas
//
//  Created by David Oteng on 16/08/2023.
//

import SwiftUI

struct ChatView: View {
    
    @State private var isShowingVideoCall = false
    @State private var isShowingPhoneCall = false
    
    var body: some View {
        VStack{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing: 10) {
                    Group {
                        ChatBubble(text: "Hello there!", isUser: false)
                        ChatBubble(text: "Hi! How are you?", isUser: true)
                        ChatBubble(text: "I'm doing great, thanks!", isUser: false)
                        ChatBubble(text: "That's awesome!", isUser: true)
                        ChatBubble(text: "By the way, did you watch the new movie?", isUser: true)
                        ChatBubble(text: "Yes, I did. It was fantastic!", isUser: false)
                        ChatBubble(text: "I'm glad you liked it!", isUser: true)
                        ChatBubble(text: "Do you want to meet up this weekend?", isUser: false)
                        ChatBubble(text: "Sure! Let's plan something fun.", isUser: true)
                        ChatBubble(text: "Great! I'll check my schedule.", isUser: false)
                    }
                    VStack {
                        ChatBubble(text: "Sounds good. Let me know.", isUser: true)
                        ChatBubble(text: "Talk to you later!", isUser: false)
                        ChatBubble(text: "Bye! Have a great day!", isUser: true)
                        ChatBubble(text: "(:", isUser: true)
                        ChatBubble(text: "Wait did you take the Coat", isUser: false)
                        ChatBubble(text: "Yeah I did See you tomorrow!", isUser: true)
                        
                        
                        
                        
                    }
                }
                .padding()
            }
            
            ChatInputView()
        }
        .navigationBarTitle("Chat", displayMode: .inline)
             .navigationBarItems(trailing:
                 HStack {
                 NavigationLink(destination:                          VideoCallView(callerName: "John Doe", callerImageName: "callerImage", recipientImageName: "recipientImage")) {
                                        Image(systemName: "video")
                                            .padding(5)
                                            .font(.caption2)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
                                            .clipShape(Circle())
                     
                                    }
                                    .padding(.trailing, 20)
                                    
                                    NavigationLink(destination:                         CallIndicatorView(callerName: "John Doe", callerImageName: "callerImage")
                                    ) {
                                        Image(systemName: "phone")
                                            .padding(5)
                                            .font(.caption2)
                                            .foregroundColor(.black)
                                            .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
                                            .clipShape(Circle())

                                    }
                 
//                     Button(action: {
//                         isShowingVideoCall.toggle()
//                     }) {
//                         Image(systemName: "video.fill")
//                             .font(.title)
//                             .foregroundColor(.blue)
//                     }
//                     .padding(.trailing, 20)
//                     .sheet(isPresented: $isShowingVideoCall) {
//                         VideoCallView(callerName: "John Doe", callerImageName: "callerImage", recipientImageName: "recipientImage")
//                     }
//
//                     Button(action: {
//                         isShowingPhoneCall.toggle()
//                     }) {
//                         Image(systemName: "phone.fill")
//                             .font(.title)
//                             .foregroundColor(.green)
//                     }
//                     .sheet(isPresented: $isShowingPhoneCall) {
//                         CallIndicatorView(callerName: "John Doe", callerImageName: "callerImage")
//                    }
                 }
             )
    }
}


struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
