//
//  SelectTimeView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

//
//  AppointmentDetailsView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import SwiftUI

struct SelectTimeView: View {
    @State private var selectedDate = Date()

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: .leading,spacing: 10){
                    
                    
                    DatePicker("Enter your birthday", selection: $selectedDate)
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .frame(maxHeight: 400)
                        .frame(maxWidth: .infinity)
                        .padding(30)
                    
                    
                    
                    //            DatePicker("Date", selection: $selectedDate, displayedComponents: .date)
                    //                           .datePickerStyle(WheelDatePickerStyle())
                    //                           .labelsHidden() // Hide the label of the DatePicker
                    //                           .padding()
                    
                    HStack(alignment: .bottom){
                        Text("Date")
                            .font(.system(size: 21))
                            .fontWeight(.medium)
                        Spacer()
                        
                        Text("See All")
                            .font(.system(size: 15))
                        
                    }
                    //.padding(.top,25)
                    .padding(.horizontal,30)
                    
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing: 15){
                            ForEach(timeList, id: \.id){time  in
                                
                                RoundedHRectView(obj: Category(name: "Sun 4", image: "", description: "desc"),width: 135,height: 70, foregroundColor: Color.white,backgroundColor: Color(red: 0.10, green: 0.56, blue: 0.71))
                            }
                        }
                        .padding(.horizontal,30)
                        
                    }
                    
                    
                    Button(action: {
                        DispatchQueue.main.async {
                            
                        }
                    }) {
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
                .padding(.vertical, 30)
                .navigationBarTitle("Select Time", displayMode: .large)
                
            }
        }
    }
    
}

struct SelectTimeView_Previews: PreviewProvider {
    static var previews: some View {
        SelectTimeView()
    }
}
