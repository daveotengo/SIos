//
//  CustomTextField.swift
//  Sormas
//
//  Created by David Oteng on 08/08/2023.
//

import SwiftUI

struct CustomTextField: View {
    let icon: String
    let title: String
    let hint: String
    @Binding var value: String
    @Binding var showPassword: Bool
  
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Label{
                Text(title)
                    .font(.body)
                    .frame(maxWidth: .infinity, alignment: .leading)
            } icon: {
                Image(systemName: icon)
            }
            .foregroundColor(Color.black.opacity(0.8))
            
            if title.contains("Password") && !$showPassword.wrappedValue{
                SecureField(hint, text: $value)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.2), lineWidth: 2)
                    )
                    //.padding(.bottom)
            }else{
                TextField(hint, text: $value)
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray.opacity(0.2), lineWidth: 2)
                    )
                    //.padding(.bottom)
            }
            
           
            
//            Divider()
//                .background(Color.black.opacity(0.4))
        }
        .overlay(
            Group{
                if title.contains("Password") {
                    //VStack(alignment: .center){
                        Button(action: {
                            $showPassword.wrappedValue.toggle()
                        }, label: {
                            //                        Text(!showPassword.wrappedValue ? "Show" : "Hide")
                            //                            .font(.system(size: 13))
                            //                            .foregroundColor(.purple)
                            //                            .padding()
                            Image(systemName: !$showPassword.wrappedValue ? "eye.slash.fill":"eye.fill")
                            
                                .font(.system(size: 15))
                            //.bold()
                                .foregroundColor(.gray.opacity(0.8))
                              
                            
                                .padding(.horizontal)
                            
                        })
                        .offset(y: 15)
                        
                   // }
                }
            }
            ,alignment: .trailing
               
        )
    }
}


struct CustomTextField_Previews: PreviewProvider {
    
  
    
    static var previews: some View {
       
            PreviewWrapper()
        
    }
    
    struct PreviewWrapper: View {
           @State private var password = ""
           @State private var showPassword = false
           @State private var username = "initialUsername"

           var body: some View {
               CustomTextField(
                  
                   icon: "lock",
                   title: "Password",
                   hint: "Enter your password",
                   value: $username,
                   showPassword: $showPassword

               )
               .padding()
           }
       }
}

