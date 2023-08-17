//
//  DoctorsView.swift
//  Sormas
//
//  Created by David Oteng on 14/08/2023.
//

import SwiftUI

struct DoctorsView: View {
    @StateObject var homeData: HomeViewModel = HomeViewModel()
    @Namespace var animation

    //var doctor: Doctor
    var body: some View {
        //NavigationView{
            VStack(spacing: 20){
                ZStack{
                    
                    if homeData.searchActivated{
                        SearchBar()
                    }else{
                        SearchBar()
                            .matchedGeometryEffect(id: "SEARCHBAR", in: animation)
                    }
                    
                }
                //                .frame(width: getRect().width / 1.1 )
                .padding(.horizontal, 10)
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation(.easeInOut){
                        homeData.searchActivated =  true
                    }
                }
                ScrollView(.vertical, showsIndicators: false){
                    
                    VStack(spacing: 10){
                        ForEach(doctorList, id: \.id){ doctor in
                            NavigationLink {
                                
                                AppointmentDetailsView()
                                //                                ProductDetailsView(product: product)
                            } label: {
                                DoctorCardView(doctor: doctor)
                                    .padding(.vertical,5)
                                
                                //                                    .environmentObject(cartManager)
                            }
                            //.navigationTitle("All Doctors")
                            
                        }
                    }
                    //.padding(.horizontal)
                }
            }
            .edgesIgnoringSafeArea(.all)
            .navigationBarTitle("All Doctors")
            .padding(.horizontal, 20)
            .padding(.top)
            
        //}
      
    }
}

struct DoctorsView_Previews: PreviewProvider {
    static var previews: some View {
        DoctorsView()
    }
}
