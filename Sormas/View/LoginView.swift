//
//  LoginView.swift
//  Sormas
//
//  Created by David Oteng on 06/08/2023.
//

import SwiftUI

struct LoginView: View {
    @StateObject var loginData: LoginScreenModel = LoginScreenModel()
   // let color2 = UIColor(rgb: 0xFFFFFF)
    var body: some View {
        ScrollView(.vertical,showsIndicators: false){
         
                VStack{
                    VStack{
                        Text("Welcome")
                            .font(.system(size: 22))
                            //.font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding(.bottom, 20)
                        
                        Text("Sign In")
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 10)
                        
                        
                        Text("Korem ipsum dolor sit amet, consectetur adipiscing elit.")
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 40)
                        
                        Text("Username")
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        //.padding(.bottom, 5)
                        
                        TextField("Enter your Username", text: $loginData.username)
                            //.frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 2)
                            )
                            .padding(.bottom)
                        
                        Text("Password")
                            .font(.body)
                        
                            .frame(maxWidth: .infinity, alignment: .leading)
                        //.padding(.bottom, 5)
                        
                        SecureField("Enter your Password", text: $loginData.password)
                            //.frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.gray.opacity(0.1))
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.gray.opacity(0.2), lineWidth: 2)
                            )
                        .padding(.bottom,5)
                        
                        Text("Forgot Password")
                            //.font(.none)
                            .font(.system(size: 14))
                        //.fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .padding(.bottom)
                        
                        Button {
                            
                        } label: {
                            Text("Sign In")
                                .bold()
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 8)
                            
                                .fill(Color(red: 0.10, green: 0.56, blue: 0.71))
                            
                        )
                        .cornerRadius(10)
                        .padding(.bottom)
                        
                        //                Image("google")
                        //                    .resizable()
                        //                    .aspectRatio(contentMode: .fill)
                        //                    .frame(width: 100, height: 100) // Adjust the size as needed
                        //                    .clipShape(Circle())
                        //                    .overlay(Circle().stroke(Color.white, lineWidth: 2))
                        
                        Text("OR")
                            .font(.body)
                            .fontWeight(.bold)
                            .foregroundColor(.gray)
                            
                    }
                    VStack{
                        
                        HStack(spacing: 30){
                            ZStack {
                                
                                Circle()
                                    .frame(width: 45, height: 45)
                                    .foregroundColor(.clear)
                                    .overlay(
                                        Circle()
                                            .stroke(Color(red: 0.10, green: 0.56, blue: 0.71), lineWidth: 2) // Customize the color and line width
                                    )
                                
                                Image("facebook")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 30, height: 30)
                                    .clipShape(Circle())
                            }
                            ZStack {
                                
                                Circle()
                                    .frame(width: 45, height: 45)
                                    .foregroundColor(.clear)
                                    .overlay(
                                        Circle()
                                            .stroke(Color(red: 0.10, green: 0.56, blue: 0.71), lineWidth: 2) // Customize the color and line width
                                    )
                                
                                Image("google")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 30, height: 30)
                                    .clipShape(Circle())
                            }
                        }
                        .padding(.bottom,30)
                        
                        
                        
                        HStack{
                            Text("Dont have an account ?")

                            
                            Text("Sign Up")

                            
                        }
                        .font(.system(size: 14))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
                    }
                    
                    
                    
                    
                }
                
               Spacer()
                
            
            // .frame(maxWidth: .infinity, maxHeight: .infinity)
           
            
        } .background(Color(.white))
            .padding(25)

    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

//extension View{
//    func getRect() -> CGRect{
//        return UIScreen.main.bounds
//    }
//}

//extension UIColor {
//   convenience init(red: Int, green: Int, blue: Int) {
//       assert(red >= 0 && red <= 255, "Invalid red component")
//       assert(green >= 0 && green <= 255, "Invalid green component")
//       assert(blue >= 0 && blue <= 255, "Invalid blue component")
//
//       self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
//   }
//
//   convenience init(rgb: Int) {
//       self.init(
//           red: (rgb >> 16) & 0xFF,
//           green: (rgb >> 8) & 0xFF,
//           blue: rgb & 0xFF
//       )
//   }
//}
