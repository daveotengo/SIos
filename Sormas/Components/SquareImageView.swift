//
//  SquareImageView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import SwiftUI

struct SquareImageView: View {
    var body: some View {
        VStack{
            Image("doctor1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.top)
                .frame(width: 150, height: 150) // Adjust the size as needed
                .clipShape(RoundedRectangle(cornerRadius: 10)) // Rounded corners
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 2))
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.gray.opacity(0.7),Color.gray.opacity(0.2), Color.gray.opacity(0.4)]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            
            //                        AngularGradient(
            //                                          gradient: Gradient(colors: [Color.gray.opacity(0.8), Color.gray.opacity(0.5)]),
            //                                          center: .center
            //                                      )
            //                        RadialGradient(
            //                                           gradient: Gradient(colors: [Color.gray.opacity(0.5),Color.gray.opacity(0.9), Color.gray.opacity(0.8)]),
            //                                           center: .center,
            //                                           startRadius: 0,
            //                                           endRadius: 120
            //                                       )
            
            
        }
    }
    
}

struct SquareImageView_Previews: PreviewProvider {
    static var previews: some View {
        SquareImageView()
    }
}
