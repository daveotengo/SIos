//
//  MainView.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//

import SwiftUI

struct MainView: View {
    
    @State var currentTab: Tab = .Home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        VStack{
         
            TabView(selection: $currentTab){
                Home()
                    .tag(Tab.Home)
                 
                
                SelectTimeView()
                    .tag(Tab.SelectTime)
                
                
                ProfileView()
                    .tag(Tab.Profile)
                
                ChatsView()
                    .tag(Tab.Cart)
            }
        
           
            HStack(spacing: 0){
                ForEach(Tab.allCases,id: \.self){tab in
                    Button {
                        currentTab = tab
                    } label: {
                        Image(systemName: tab.rawValue)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 20, height: 20)
                            .background(Color(red: 0.10, green: 0.56, blue: 0.71)
                                .cornerRadius(10)
                               
                                .padding(-12)
                                .opacity(currentTab == tab ? 1 : 0)
                            )
                            .frame(maxWidth: .infinity)
                            
                            .foregroundColor(.black)
//                            .foregroundColor(currentTab == tab ? .purple : .black.opacity(0.3))
                    }
                    
                }
            }
            .padding([.horizontal, .bottom])
            .padding(.bottom, 10)
            .padding()
            
        }
        .background(.quaternary).ignoresSafeArea()
        
       
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

enum Tab: String, CaseIterable{
    case Home = "house" //Home"
    case SelectTime = "clock" //Liked
    case Cart = "ellipsis.bubble" //Profile
    case Profile = "person" //Cart
}
