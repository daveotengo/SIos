//
//  CallIndicatorView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import SwiftUI

struct CallIndicatorView: View {
    var callerName: String
    var callerImageName: String
    
    @State private var isRinging = false
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), center: .center, startRadius: 50, endRadius: 200)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("doctor2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(Color.green, lineWidth: 2)
                            .opacity(isRinging ? 1 : 0) // Show the ring when isRinging is true
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: true)
                    )
                    .offset(y: -50)
                    .padding(.bottom, -50)
                
                Text(callerName)
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
                
                Text("Ringing...")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .opacity(isRinging ? 1 : 0) // Show the text when isRinging is true
                    .animation(Animation.easeInOut(duration: 0.8).repeatForever(autoreverses: true),value: true)
                Spacer()

                VStack {
                    //Spacer()
                    HStack(spacing: 30) {
                        Image(systemName: "video.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                        
                        Image(systemName: "mic.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                        
                        Image(systemName: "phone.fill")
                            .font(.system(size: 40))
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 40)
                }
                
            }
        }
        .onAppear {
            isRinging = true
        }
        .onDisappear {
            isRinging = false
        }
    }
}

struct CallIndicatorView_Previews: PreviewProvider {
    static var previews: some View {
        CallIndicatorView(callerName: "John Doe", callerImageName: "callerImage")
    }
}
