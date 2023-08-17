//
//  DoctorCardView.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//

import SwiftUI

//
//  CategoriesCardView.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//


import SwiftUI

struct DoctorCardView: View {
  
    var doctor : Doctor
    var body: some View {
        
        ZStack{
            Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30)
            ZStack(alignment: .bottom){
                
                HStack(alignment: .center){
                    
                    Image(doctor.image)
                        .resizable()
                        .frame(width: 120, height: 130)
                        .cornerRadius(12)
                        .offset(y: 13)
                       
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 2){
                        
                        HStack{
                            
                            Text(doctor.name)
                                .font(.system(size: 25))
                                .fontWeight(.bold)
                                .fontWidth(.condensed)
                                .foregroundColor(.black)
                                .padding(.vertical, 1)
                            
                            Spacer()
                            
                            Image(systemName: "heart")
                               
                                .resizable()
                                .frame(width: 20,height: 20)
                                .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
                                .bold()
                            
                                                 
                        }
                        
                        Text(doctor.description)
                            .font(.system(size: 13))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .foregroundColor(.black)
                            .padding(.vertical, 1)
                        
                        Button(action: {
                            
                        }) {
                            Text("Book")
                                .bold()
                                .frame(maxWidth: .infinity)
                                .frame(width: 50,height: 23)
                                .padding(.horizontal)
                                .padding(.vertical,5)
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(Color(red: 0.10, green: 0.56, blue: 0.71))
                                )
                                //.cornerRadius(16)
                                //.padding(.horizontal)
                        }
                        .padding(.vertical,10)
                        
                        //
//                        Text(doctor.supplier)
//                            .font(.caption)
//                            .padding(.vertical, 0.5)
//                        //
//                                            Text("$\(doctor.price)")
//                                                .foregroundColor(.black)
//                                                .bold()
                    }
                    .padding(.top,1)
                    //.padding(.bottom)

                    
                }
                .padding(.trailing, 10)

//                Button{
////                    cartManager.addToCart(product: product)
//                }label: {
//                    Image(systemName: "plus.circle.fill")
//                        .resizable()
//                        .foregroundColor(Color("kPrimary"))
//                        .frame(width: 35, height: 35)
//                        .padding(.trailing)
//                }
            }
            .padding(10)
        }
        .frame(maxWidth: .infinity)
        .frame( height: 160)

        .cornerRadius(15)
    }
}




struct DoctorCardView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorCardView(doctor:  doctorList[0])
           .padding(.horizontal)
    }
}
