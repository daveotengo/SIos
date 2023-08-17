//
//  ActiveUserView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import SwiftUI

import SwiftUI

struct ActiveUserView: View {
    var imageName: String
    var isActive: Bool
    
    var body: some View {
        ZStack {
            
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .font(.system(size: 60))
                .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
                .frame(width: 70, height: 70)
                .background(Color.white)
                .clipShape(Circle())
                .overlay(
                        Circle()
                            .stroke(Color.black, lineWidth: 2).opacity(0.2) // Adjust the color and lineWidth as needed
                    )
            
            if isActive {
                Circle()
                    .fill(Color.green)
                    .frame(width: 20, height: 20)
                    .offset(x: 25, y: -25)
            }
        }
    }
}

struct ActiveUserView_Previews: PreviewProvider {
    static var previews: some View {
        ActiveUserView(imageName: "doctor2", isActive: true)
    }
}

