//
//  CongratulationsView.swift
//  Sormas
//
//  Created by David Oteng on 17/08/2023.
//

import SwiftUI

struct CongratulationsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()

                Circle()
                    .fill(Color(red: 0.10, green: 0.56, blue: 0.71))
                    .frame(width: 100, height: 100)
                    .overlay(
                        Image(systemName: "checkmark")
                            .font(.system(size: 50))
                            .foregroundColor(.white)
                    )
                
                Text("Congratulations")
                    .font(.headline)
                    .padding(.top, 20)
                
                Text("Your payment is successful")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top, 10)
                Spacer()

                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                
                Text("Pay Now")
                    .font(Font.custom("Averia Sans Libre", size: 22).weight(.bold))
                    .frame(width: 376.55, height: 60)
                    .foregroundColor(.white)
                
                    .lineSpacing(22)
                    .background{
                        Rectangle()
                            .foregroundColor(.clear)
                            
                        
                            .background(Color(red: 0.10, green: 0.56, blue: 0.71))
                            .cornerRadius(10)
                    }
                
            }
            .padding(.vertical)
            }
            .padding()
        }
    }
}

struct CongratulationsView_Previews: PreviewProvider {
    static var previews: some View {
        CongratulationsView()
    }
}


