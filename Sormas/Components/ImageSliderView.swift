//
//  ImageSliderView.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//


import SwiftUI

struct ImageSliderView: View {
    
    @State private var currentIndex=0
    var slides:[String] = ["fn1","fn2","fn3","fn4","fn5"]
    var body: some View {
        ZStack(alignment: .center){
            ZStack(alignment: .trailing){
//                Image(slides[currentIndex])
//                    .resizable()
//                    .frame(width: .infinity, height: 180)
//                    .scaledToFit()
//                    .cornerRadius(15)
                HStack{
                    VStack(alignment: .leading,spacing: 10){
                        
                        Text("Medical Center")
                            .font(.body)
                            .fontWeight(.bold)
                        
                        Text("Yorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis.")
                            .foregroundColor(.white)
                            .font(.system(size: 13))
                            .frame(maxWidth: 300)
                            .frame(height: 100)
                            
                        
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 120)
                    .padding(.horizontal)

                   
                    Image("doctor2")
                        .resizable()
                        .frame(width: 150, height: 180)
                        .scaledToFit()
                }
                //.padding(.vertical,15)
                .background(Color(red: 0.10, green: 0.56, blue: 0.71))
                .cornerRadius(15)
                
                
            }
            HStack{
                ForEach(0..<slides.count,id: \.self ){index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width:10, height:10)
                    
                }
                
            }
            .padding(.top,220)
            

        }
        .padding(.horizontal)
        

        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true){timer in
                if self.currentIndex + 1 == self.slides.count {
                    self.currentIndex = 0
                }
                else{
                    self.currentIndex += 1
                }
            }
        }
    }
}

struct ImageSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ImageSliderView()
    }
}

