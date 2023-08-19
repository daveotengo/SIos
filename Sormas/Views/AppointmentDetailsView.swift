//
//  AppointmentDetailsView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import SwiftUI

struct AppointmentDetailsView: View {
    var body: some View {
        //NavigationView{
            VStack(alignment: .leading,spacing: 10){
                
                HStack(spacing:5){
                    
                    SquareImageView()
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 10){
                        
                        HStack(spacing: 10){
                            
                            Text("Dr Upaul")
                                .font(.headline)
                                .fontWeight(.bold)
                                .lineLimit(1) // Set line limit to 1
                                  .fixedSize(horizontal: true, vertical: false)
                            
                            Spacer()
                            
                            Image(systemName: "message")
                                .font(.caption)
                            //Spacer()
                            
                            Image(systemName: "phone")
                                .font(.caption)

                            //Spacer()
                            
                            Image(systemName: "video")
                                .font(.caption)

                            //Spacer()
                            
                        }
                        
                        
                        Text("dentist")
                        
                        Text("Torem ipsum dolor sit amet, consectetur adipiscing elit.")
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity)
                            .frame(height: 60)
                        
                        HStack(){
                            Text("Payment")
                            Spacer()
                            Text("$120")
                            
                        }
                    }
                }
                .padding(.top,40)

                .padding(.horizontal,30)
                
                Text("Details")
                    .font(.title3)
                    .fontWeight(.medium)
                    .padding(.top,25)
                    .padding(.vertical,5)                    .padding(.horizontal,30)
                
                Text("Worem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate libero et velit interdum, ac aliquet odio mattis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur tempus urna at turpis condimentum lobortis. Ut commodo efficitur neque. Ut diam quam, semper iaculis condimentum ac, vestibulum eu nisl.")
                    .font(.system(size: 13))                    .padding(.horizontal,30)
                
                
                HStack(alignment: .bottom){
                    Text("Working Hours")
                        .font(.system(size: 21))
                        .fontWeight(.medium)
                    
                    Spacer()
                    
                    Text("See All")
                        .font(.system(size: 15))
                    
                }
                .padding(.top,25)
                .padding(.horizontal,30)
                
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 15){
                        ForEach(timeList, id: \.id){time  in
                            
                            RoundedHRectView(obj: time ,width: 135,height: 50, foregroundColor: Color.white,backgroundColor: Color(red: 0.10, green: 0.56, blue: 0.71) )
                            
                        }
                    }
                    
                    .padding(.horizontal,30)
                    
                }
                
                
                
                
                HStack(alignment: .bottom){
                    Text("Date")
                        .font(.system(size: 21))
                        .fontWeight(.medium)
                    Spacer()
                    
                    Text("See All")
                        .font(.system(size: 15))
                    
                }
                .padding(.top,25)
                .padding(.horizontal,30)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 15){
                        ForEach(timeList, id: \.id){time  in
                            
                            RoundedHRectView(obj: Category(name: "Sun 4", image: "", description: "desc"),width: 135,height: 70, foregroundColor: Color.white,backgroundColor: Color(red: 0.10, green: 0.56, blue: 0.71))
                        }
                    }
                    .padding(.horizontal,30)
                    
                }
                
                
                NavigationLink{
                    PaymentFormView()
                    
                }
                label: {
                    Text("Book an Appointment")
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
                .padding(.top,45)
                .padding(.horizontal,30)
                
                Spacer()
                
            }
            .navigationBarTitle("Appointment Details")
            
//            .navigationBarTitle("Appointment Details", displayMode: .inline)
                        .navigationBarTitleDisplayMode(.inline)

//                        .navigationBarBackButtonHidden(true)
//                                  .navigationBarItems(leading: CustomBackButton())
                       //.foregroundColor(.white)
            //.navigationBarTitle("Appointment Details")
            .padding(.vertical, 30)
            
       // }
        
    }
}

struct AppointmentDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentDetailsView()
    }
}


//extension View {
//    func navigationBarTitleFont(_ font: Font) -> some View {
//        self.modifier(NavigationBarTitleModifier(font: font))
//    }
//}
//
//struct NavigationBarTitleModifier: ViewModifier {
//    var font: Font
//
//    func body(content: Content) -> some View {
//        content
//            .font(font)
//    }
//}

