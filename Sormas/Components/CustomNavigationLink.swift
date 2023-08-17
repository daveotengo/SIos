//
//  CustomNavigationLink.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import Foundation

import SwiftUI

struct CustomNavigationLink<Detail: View>: View {
    var title: String
    var content: ()->Detail
    var customFont: String
    var image: String
    
    init(title: String, customFont: String,image: String, @ViewBuilder content: @escaping ()->Detail) {
        self.title = title
        self.content = content
        self.customFont = customFont
        self.image = image
    }
    
    var body: some View {
        NavigationLink {
            content()
        } label: {
            HStack {
                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 20, height: 20)
                    .bold()
                    .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
                    .padding(10) // Add padding here
                    .background(Color(red: 0.85, green: 0.85, blue: 0.85))
                    .clipShape(Circle())
                
                Text(title)
                    .font(.custom(customFont, size: 17))
                    .fontWeight(.semibold)
                    .padding(.horizontal,30)
                
                    
                
                Spacer()
                
                Image(systemName: "chevron.right")
            }
            .foregroundColor(.black)
            .padding()
            .background(
                Color.white
                    .cornerRadius(12)
            )
            //.padding(.horizontal)
            .padding(.top, 10)
        }
//        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4) // Add a shadow for a raised effect
    }
}

struct CustomNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationLink(title: "Example Title", customFont: "Helvetica",image: "clock.arrow.circlepath", content: {
            Text("Detail View Content Here")
        })
    }
}
