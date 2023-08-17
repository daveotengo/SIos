//
//  VideoCallView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//
import SwiftUI

struct VideoCallView: View {
    var callerName: String
    var callerImageName: String
    var recipientImageName: String
    
    @State private var callDuration: TimeInterval = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Image("doctor2")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                HStack(spacing: 30) {
                    CircleButton(systemName: "phone")
                    CircleButton(systemName: "mic")
                    CircleButton(systemName: "camera")
                }
                .padding(.bottom, 30)
            }
            
                VStack(alignment: .leading) {
                    Text(callerName)
                        .font(.title)
                        .bold()
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                        .padding(.bottom, 8)
                    
                    Text(timeFormatted(callDuration))
                        .font(.title)
                        .bold()
                        .foregroundColor(.black)
                        .padding(.leading, 20)
                }
                .onReceive(timer) { _ in
                    callDuration += 1
                }
                .onAppear {
                    callDuration = 0
                }
                .offset(x: -100, y: 170)

                
            
            
            Image("doctor1")
                   .resizable()
                   .aspectRatio(contentMode: .fit)
                   .frame(width: 140, height: 140)
                   .clipShape(RoundedRectangle(cornerRadius: 20))
                   .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 2))
                   .background(
                       Image(callerImageName)
                           .resizable()
                           .aspectRatio(contentMode: .fill)
                           .background(.gray)
                           .blur(radius: 10) // Apply blur to the background behind the small caller's image
                   )
                   .offset(x: 100, y: 170)
            
        }
    }
    
    func timeFormatted(_ totalSeconds: TimeInterval) -> String {
        let seconds: Int = Int(totalSeconds) % 60
        let minutes: Int = Int(totalSeconds) / 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
}

struct CircleButton: View {
    var systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .font(.title)
            .bold()
            .foregroundColor(.white)
            .frame(width: 60, height: 60)
            .padding(5)
            .background(Circle().foregroundColor(Color.blue))
    }
}

struct VideoCallView_Previews: PreviewProvider {
    static var previews: some View {
        VideoCallView(callerName: "John Doe", callerImageName: "callerImage", recipientImageName: "recipientImage")
    }
}
