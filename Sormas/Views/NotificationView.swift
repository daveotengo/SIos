//
//  NotificationView.swift
//  Sormas
//
//  Created by David Oteng on 16/08/2023.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack{
            
            HStack(alignment: .bottom){
                Text("New")
                    .font(.system(size: 21))
                    .fontWeight(.medium)
                Spacer()
                
                Text("Mark All")
                    .font(.system(size: 15))
                
            }
            .padding(.bottom,20)
            .padding(.horizontal,20)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    ForEach(1..<10){index in
                        
                        NotificationCardView(
                            iconName: "bell.fill",
                            time: "2h ago",
                            caption: "April \(index)",
                            content: "You have a new message from John."
                        )
                        // .padding()
                    }
                }
                .padding(20)
            }
            
        }
        .padding(.top,30)

    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
