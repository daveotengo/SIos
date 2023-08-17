//
//  SemiProfileView.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//

import SwiftUI

//
//  CartProductView.swift
//  furniture_ecommerce
//
//  Created by David Oteng on 21/07/2023.
//

import SwiftUI

struct SemiProfileView: View {
  
    var body: some View {
        //NavigationStack{
            HStack(spacing:20){
            
            Image("Profile_image")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
            //.cornerRadius(20)
                .clipShape(Circle())
            //.offset(y: -30)
            //.padding(.top,20)
            //.padding(.bottom,20)
            
            VStack(alignment: .leading, spacing: 5){
                Text("David Oteng")
                    .bold()
                //                Text("None")
                //                    .bold()
            }
            //.padding()
            
            Spacer()
                
                NavigationLink(destination: {
                    NotificationView()
                }, label: {
                    NotificationButton(numberOfProducts: 1)

                }) .foregroundColor(.black)
                
//            NavigationLink{
//                NotificationView()
//            }label: {
//                NotificationButton(numberOfProducts: 1)
//            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
            
        .padding(.horizontal)
        .background(.white)
        .cornerRadius(12)
        }
   //}
}




struct SemiProfileView_Previews: PreviewProvider {
    static var previews: some View {
        SemiProfileView()
    }
}
