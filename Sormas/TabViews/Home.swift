//
//  Home.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//


import SwiftUI

struct Home: View {
    let customFont = "Raleway-Regular"
    @Namespace var animation
    @StateObject var homeData: HomeViewModel = HomeViewModel()
    var body: some View {
        
        NavigationView{
            //ScrollView(.vertical, showsIndicators: false){
                
                VStack(spacing: 15){
                    

                        SemiProfileView()
                
                    
                    
                    //Seach Bar
                    ZStack{
                        
                        if homeData.searchActivated{
                            SearchBar()
                        }else{
                            SearchBar()
                                .matchedGeometryEffect(id: "SEARCHBAR", in: animation)
                        }
                        
                    }
                    //                .frame(width: getRect().width / 1.1 )
                    .padding(.horizontal, 20)
                    .contentShape(Rectangle())
                    .onTapGesture {
                        withAnimation(.easeInOut){
                            homeData.searchActivated =  true
                        }
                    }
                    
                    
                    HorizontalSliderView()
                    
                    HStack(alignment: .bottom){
                        Text("Categories")
                            .font(.system(size: 21))
                            .fontWeight(.medium)
                        Spacer()
                        
                        Text("See All")
                            .font(.system(size: 15))
                        
                    }
                    .padding(.horizontal,20)
                    // Categories Section
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(categoryList, id: \.id){ category in
                                NavigationLink {
                                    //                                ProductDetailsView(product: product)
                                } label: {
                                    CategoryCardView(category: category)
                                    //                                    .environmentObject(cartManager)
                                }
                                
                            }
                        }
                        .padding(.horizontal)
                    }
                    
                    VStack{
                        
                        HStack(alignment: .bottom){
                            Text("Top Doctors")
                                .font(.system(size: 21))
                                .fontWeight(.medium)
                            Spacer()
                            
                            //                        Text("See All")
                            //                            .font(.system(size: 15))
                            
                            //See more button
                            
                            NavigationLink(destination: {
                                DoctorsView()
                            }, label: {
                                Text("See All")
                                    .font(.system(size: 15))
                                
                            }) .foregroundColor(.black)
                            
                            
                        }
                        .padding(.horizontal,20)
                        
                        
                        
                        ScrollView(.vertical, showsIndicators: false){
                            VStack(spacing: 0){
                                ForEach(doctorList.prefix(3), id: \.id){ doctor in
                                    NavigationLink {
                                        
                                        AppointmentDetailsView()
                                        //                                ProductDetailsView(product: product)
                                    } label: {
                                        DoctorCardView(doctor: doctor)
                                            .padding(.vertical,5)
                                        
                                        //                                    .environmentObject(cartManager)
                                    }
                                    
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                    }
                    
                    
                    
                }
                //.padding(.vertical)
                // here from the scrollView
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                
                .onChange(of: homeData.productType){ newValue in
                    homeData.filterProductByType()
                }
                // Preview Issue
                .sheet(isPresented: $homeData.showMoreProductsOnType){
                    
                } content: {
                    //MoreProductsView()
                }
                .overlay(
                    ZStack{
                        if  homeData.searchActivated{
                            SearchView()
                                .environmentObject(homeData)
                        }
                    }
                        .background(Color.white)
                    
                )
            }
            
            
        //}
        
        // Displaying Search View
        
    }
    
  
    

    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}



//Exteding View to get sceenbounds
//Already declared
extension View{

    func getRect()->CGRect{
        return UIScreen.main.bounds
    }

}
