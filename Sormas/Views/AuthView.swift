//
//  AuthView.swift
//  Sormas
//
//  Created by David Oteng on 17/08/2023.
//

//
//  LoginView2.swift
//  Sormas
//
//  Created by David Oteng on 08/08/2023.
//



import SwiftUI

struct AuthView: View {
    @StateObject var loginData: LoginScreenModel = LoginScreenModel()
    
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
                        
                        Text(!loginData.registerUser ? "Sign In" : "Sign Up")
                            .font(.system(size: 22))
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 10)
                        
                        
                        Text("Korem ipsum dolor sit amet, consectetur adipiscing elit.")
                            .font(.body)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.bottom, 40)
                        
                        CustomTextField(icon: "person", title: "Username", hint: "Enter your Username", value: $loginData.username, showPassword: $loginData.showPassword)
                            .padding(.bottom, 20)
                        
                        CustomTextField(icon: "lock", title: "Password", hint: "12345", value: $loginData.password, showPassword: $loginData.showPassword)
                            //.padding(.bottom, 5)
                        
                        if loginData.registerUser{
                            CustomTextField(icon: "lock", title: "Re-Enter Password", hint: "12345", value: $loginData.reEnterPassword, showPassword: $loginData.showReEnterPassword)
                                .padding(.top, 20)
                        }
                        
                        //Forgot Password Button
                        Button {
                            
                            loginData.ForgotPassword()

                        } label: {
                            Text("Forgot Password")
                                .foregroundColor(.black)
                                //.font(.none)
                                .font(.system(size: 14))
                            //.fontWeight(.bold)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.bottom,30)
                        }
                        
                 
                        //Login Button
                        Button(action: {
                            DispatchQueue.main.async {
                                if loginData.registerUser {
                                    loginData.Register()
                                } else {
                                    loginData.Login(username: loginData.username, password: loginData.password)
                                }
                            }
                        }) {
                            Text(!loginData.registerUser ? "Sign In" : "Sign Up")
                                .bold()
                                .frame(maxWidth: .infinity)
                                .padding()
                                .foregroundColor(.white)
                                .background(
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color(red: 0.10, green: 0.56, blue: 0.71))
                                )
                                .cornerRadius(10)
                                .padding(.bottom)
                        }
                        

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
                        .padding(.bottom,20)
                        
                        
                        
                        //HStack{

                            Button{
                                withAnimation{
                                    loginData.registerUser.toggle()
                                }
                            } label: {
                                Text(!loginData.registerUser ? "Dont have an account?" : "Already have an account?")

                                Text(!loginData.registerUser ? "Sign Up" : "Sign In")
                            }

                        
                        //}
                        .frame(maxWidth: .infinity)
                        .frame(maxHeight: .infinity)
                        .font(.system(size: 16))
                        .fontWeight(.medium)
                        .foregroundColor(Color(red: 0.10, green: 0.56, blue: 0.71))
                        
                        
                    }
                    
                    
                    
                    
                }
                .padding(30)
                
               Spacer()
                
            
            // .frame(maxWidth: .infinity, maxHeight: .infinity)
           
            
        } .background(Color(.white))
            //

    }
    
    

    
//    @ViewBuilder
//    func CustomTextField(icon: String, title: String, hint: String, value: Binding<String>, showPassword: Binding<Bool> ) ->some View{
//        VStack(alignment: .leading, spacing: 12){
//            Label{
//                Text(title)
//                    .font(.body)
//                    .frame(maxWidth: .infinity, alignment: .leading)
//            } icon: {
//                Image(systemName: icon)
//            }
//            .foregroundColor(Color.black.opacity(0.8))
//
//            if title.contains("Password") && !showPassword.wrappedValue{
//                SecureField(hint, text: value)
//                    .padding()
//                    .background(Color.gray.opacity(0.1))
//                    .cornerRadius(10)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 10)
//                            .stroke(Color.gray.opacity(0.2), lineWidth: 2)
//                    )
//                    .padding(.bottom)
//            }else{
//                TextField(hint, text: value)
//                    .padding()
//                    .background(Color.gray.opacity(0.1))
//                    .cornerRadius(10)
//                    .overlay(
//                        RoundedRectangle(cornerRadius: 10)
//                            .stroke(Color.gray.opacity(0.2), lineWidth: 2)
//                    )
//                    .padding(.bottom)
//            }
//
//
//
////            Divider()
////                .background(Color.black.opacity(0.4))
//        }
//        .overlay(
//            Group{
//                if title.contains("Password") {
//                    Button(action: {
//                        showPassword.wrappedValue.toggle()
//                    }, label: {
////                        Text(!showPassword.wrappedValue ? "Show" : "Hide")
////                            .font(.system(size: 13))
////                            .foregroundColor(.purple)
////                            .padding()
//                        Image(systemName: !showPassword.wrappedValue ? "eye.slash.fill":"eye.fill")
//                            .font(.system(size: 15))
//                            //.bold()
//                            .foregroundColor(.gray.opacity(0.8))
//                            .padding()
//                    })
//                    .offset(y: 8)
//
//                }
//            }
//            ,alignment: .trailing
//
//        )
//
//
//    }

    
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



struct AuthView_Previews: PreviewProvider {
    static var previews: some View {
        AuthView()
    }
}
