//
//  ProfileView.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//

//
//  ProfilePage.swift
//  EcommerceAppkit
//
//  Created by David Oteng on 02/08/2023.
//

import SwiftUI

struct ProfileView: View {
    
    let customFont = "Raleway-Regular"

    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack{
//                    Text("My Profile")
//                        .font(.custom(customFont, size: 28).bold())
//                        .frame(maxWidth : .infinity, alignment: .leading)
//                        .padding()
//                        .padding(.horizontal, 20)

                    VStack(spacing: 15){
                        Image("Profile_image")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                        //.cornerRadius(200)
                            .clipShape(Circle())
                            .offset(y: -30)
                            .padding(.bottom, -30)
                        
                        Text("David Oteng")
                            .font(.title3)
                            .fontWeight(.bold)
                        
//                        HStack(alignment: .top,spacing: 10){
//                            Image(systemName: "location.north.circle.fill")
//                                .foregroundColor(.gray)
//                                .rotationEffect(.init(degrees: 180))
//
//                            Text("Adress: 43 Oxford Road\nM13 4GR\nManchester")
//                                .font(.custom(customFont, size: 15))
//                        }
//                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        
                    }
                    
                    .padding([.horizontal, .bottom])
                    
                    .background(
                        Color.white
                            .cornerRadius(12)
                        
                    )
                    .padding(.top,40)
//                    .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4)
                    // Add a shadow for a raised effect
                    
                    
                    // Custom Navigation Links
                    ScrollView(.vertical,showsIndicators: false){
                        VStack{
                            ForEach(profileList, id: \.id){profile in
                                CustomNavigationLink(title: profile.name, customFont: customFont,image: profile.image)
                                {
                                    Text("")
                                        .navigationTitle(profile.name)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                                        .background(Color.white).ignoresSafeArea()
                                }
                            }
                            
                            
                        }
                        
                    }
                    
                    .padding(.horizontal,22)
                    //.padding(.vertical,20)
                }
                
                
                
            }
            //.navigationBarHidden(true)
            .navigationBarTitle("My Profile", displayMode: .large)

            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Color(.white)
            
            )
        }
    }
    
//    @ViewBuilder
//    func CustomNavigationLink<Detail: View>(title: String, @ViewBuilder content: @escaping ()->Detail)->some View {
//    
//        NavigationLink{
//            content()
//        } label: {
//            HStack{
//                Text(title)
//                    .font(.custom(customFont, size: 17))
//                    .fontWeight(.semibold)
//                
//                Spacer()
//                
//                Image(systemName: "chevron.right")
//                   
//            }
//            .foregroundColor(.black)
//            .padding()
//            .background(
//                Color.white
//                    .cornerRadius(12)
//            )
//            .padding(.horizontal)
//            .padding(.top,10)
//            
//        }
//        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4) // Add a shadow for a raised effect
//
//     
//    }
    
    
}




struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
