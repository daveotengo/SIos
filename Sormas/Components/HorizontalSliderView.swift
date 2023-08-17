//
//  HorizontalSliderView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//



import SwiftUI

struct HorizontalSliderView: View {
    
    @State private var currentIndex=0
    //var slides:[String] = ["fn1","fn2","fn3","fn4","fn5"]
    //var doctor: Doctor
    var body: some View {
        ZStack{
            ZStack(){
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
                            .frame(maxWidth: .infinity)
                            .frame(height: 90)
                            
                        
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 120)
                    .padding(.horizontal)

                   
                    Image(doctorList[currentIndex].image)
                        .resizable()
                        .frame(width: 125, height: 140)
                        .scaledToFit()
                        .offset(y: 20)
                        
                }
                .frame(height: 160)

                .background(Color(red: 0.10, green: 0.56, blue: 0.71))
                .cornerRadius(15)
                
                
                
            }
            .padding(.bottom,15)

            HStack{
                ForEach(0..<doctorList.count, id: \.self){index in
                    Circle()
                        .fill(self.currentIndex == index ? Color("kPrimary") : Color("kSecondary"))
                        .frame(width:11, height:11)
                    
                }
                
            }
            .offset(y: 90)
            //.padding(.top,220)
            

        }
        .padding(.horizontal)
        

        .onAppear{
            Timer.scheduledTimer(withTimeInterval: 5, repeats: true){timer in
                if self.currentIndex + 1 == min(2, doctorList.count) {
                    self.currentIndex = 0
                }
                else{
                    self.currentIndex += 1
                }
            }
        }
    }
}



struct HorizontalSliderView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalSliderView()
    }
}
