//
//  ChatsView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import SwiftUI

struct ChatsView: View {
    var body: some View {
        NavigationView{
        VStack(alignment: .leading){
            
            SearchBar()
            
            
            Text("Active Now")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.top,30)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 20){
                    ForEach(doctorList, id: \.id){ doctor in
                        
                        ActiveUserView(imageName: doctor.image, isActive: true)
                        
                    }
                }
            }
            
            Text("Messages")
                .font(.title2)
                .fontWeight(.medium)
                .padding(.top, 30)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing:15){
                    ForEach(doctorList, id: \.id){ doctor in
                        NavigationLink{
                            ChatView()
                        } label: {
                            ChatCardView(
                                recipientName: doctor.name,
                                recipientImage: doctor.image,
                                timeOfChat: "2h ago",
                                chatCount: 3,
                                lastChatItem: "Hey! How's it going?"
                            )
                        }
                        
                    }
                    
                }
                // .padding(.top)
                
            }
            
            Spacer()
        }
        .ignoresSafeArea()
        .padding(.horizontal)
        .padding(.top)
        .navigationBarTitle("Chats", displayMode: .large)

        
    }

    }
        

}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
