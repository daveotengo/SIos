//
//  NotificationCardView.swift
//  Sormas
//
//  Created by David Oteng on 16/08/2023.
//

import SwiftUI

import SwiftUI

struct NotificationCardView: View {
    var iconName: String
    var time: String
    var caption: String
    var content: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(systemName: iconName)
                .font(.title)
                .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
                .frame(width: 40, height: 40)
                .background(Color.white)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4) {
               
                Text(caption)
                    .font(.headline)
                Text(content)
                    .font(.caption)
            }
            
            Spacer()
            
            Text(time)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        //.frame(maxWidth: .infinity)
        .padding()
        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
              .cornerRadius(10)
        
    }
}




struct NotificationCardView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationCardView(
            iconName: "bell.fill",
            time: "2h ago",
            caption: "New Notification",
            content: "You have a new message from John."
        )
        .padding()
    }
}
