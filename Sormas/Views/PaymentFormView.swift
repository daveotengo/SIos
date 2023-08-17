//
//  PaymentFormView.swift
//  Sormas
//
//  Created by David Oteng on 17/08/2023.
//


import SwiftUI

struct PaymentFormView: View {
    @State private var textValue = "1234 8896 1145 0896"
    @State private var nameValue = "Ravishka Sathsara"
    @State private var expiryDateValue = "10/02/2022"
    @State private var cvvValue = "204"
    
    @State private var selectedDate = Date()
       @State private var formattedDate = ""
    
    @State private var date = Date()
    let dateRange: ClosedRange<Date> = {
        let calendar = Calendar.current
        let startComponents = DateComponents(year: 2021, month: 1, day: 1)
        let endComponents = DateComponents(year: 2021, month: 12, day: 31, hour: 23, minute: 59, second: 59)
        return calendar.date(from:startComponents)!
            ...
            calendar.date(from:endComponents)!
    }()

    @State private var show: Bool = false


    var body: some View {
       // NavigationView{
            ZStack() {
                
                VStack (){
                    
                    Text("$ 120.00")
                        .font(Font.custom("Averia Sans Libre", size: 50).weight(.bold))
                        .foregroundColor(.white)
                        .padding(.top,120)
                        .padding(.bottom)
                    //                        Text("Payment")
                    //                          .font(Font.custom("Averia Sans Libre", size: 26).weight(.bold))
                    //                          .foregroundColor(.black)
                    //                          .offset(x: 0, y: -364.50)
                    Spacer()
                    
                    VStack(spacing: 20){
                        
                        
                        Text("Doctor Chanaling Payment Method")
                            .font(.title3)
                            .fontWeight(.bold)
                        //                        .font(Font.custom("Averia Sans Libre", size: 20).weight(.bold))
                            .foregroundColor(.black)
                            .padding(.top, 40)
                        
                        
                        
                        
                        ScrollView(.vertical, showsIndicators: false){
                            VStack(spacing: 20){
                                
                                VStack {
                                    
                                    //
                                    HStack(spacing: 20){
                                        
                                        ZStack{
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 163, height: 50)
                                                .background(Color(red: 0.10, green: 0.56, blue: 0.71))
                                                .cornerRadius(15)
                                                .overlay(
                                                    RoundedRectangle(cornerRadius: 15)
                                                        .inset(by: 1.50)
                                                        .stroke(.black, lineWidth: 1.50)
                                                )
                                            
                                            Text("Card Payment")
                                                .font(Font.custom("Averia Sans Libre", size: 15))
                                                .foregroundColor(.black)
                                            
                                        }
                                        
                                        ZStack{
                                            
                                            Rectangle()
                                                .foregroundColor(.clear)
                                                .frame(width: 163, height: 50)
                                                .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
                                                .cornerRadius(15)
                                            Text("Cash Payment")
                                                .font(Font.custom("Averia Sans Libre", size: 15))
                                                .foregroundColor(.black)
                                        }
                                        
                                        
                                    }
                                    
                                    
                                }
                                .padding(.top,30)
                                
                                VStack(alignment: .leading, spacing: 15){
                                    
                                    //                        Text("Card Number")
                                    //                                .font(Font.custom("Averia Sans Libre", size: 18))
                                    //                                .foregroundColor(.black)
                                    
                                    
                                    
                                    ZStack{
                                        CustomTextField(icon: "creditcard", title: "Card Number", hint: "Enter your Username", value: $textValue, showPassword: $show)
                                        //.padding(.bottom, 10)
                                            .frame(width: 350)
                                        //                                Text("1234 8896 1145 0896")
                                        //                                    .font(Font.custom("Averia Sans Libre", size: 16))
                                        //                                    .foregroundColor(.black)
                                        //                                Rectangle()
                                        //                                    .foregroundColor(.clear)
                                        //                                    .frame(width: 348.42, height: 50)
                                        //                                    .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
                                        //                                    .cornerRadius(15)
                                        
                                    }
                                    
                                    
                                }
                                
                                HStack(spacing: 20) {
                                    VStack(alignment: .leading) {
                                        //                                    HStack{
                                        //                                        Image(systemName: "calendar")
                                        //                                            .padding(.leading, 8)
                                        //                                            .foregroundColor(.gray)
                                        //                                                                        Text("Expiry Date")
                                        //                                                                            .font(Font.custom("Averia Sans Libre", size: 18))
                                        //                                                                            .foregroundColor(.black)
                                        //
                                        //
                                        //                                    }
                                        
                                        HStack {
                                            
                                            ZStack{
                                                
                                                
                                                
                                                
                                                //                                            .labelsHidden()
                                                //                                            .padding(.horizontal, 8)
                                                
                                                CustomTextField(icon: "calendar", title: "Expiry Date", hint: "Enter your Username", value: $expiryDateValue, showPassword: $show)
                                                //.padding(.bottom, 10)
                                                    .frame(width: 170)
                                                //                                                .overlay{
                                                //                                                    DatePicker(
                                                //                                                        "Start Date",
                                                //                                                        selection: $date,
                                                //                                                        in: dateRange,
                                                //                                                        displayedComponents:
                                                //                                                            [.date]
                                                //                                                        //[.date, .hourAndMinute]
                                                //                                                    )
                                                //                                                }
                                                
                                                //                                               DatePicker(
                                                //                                                   "",
                                                //                                                   selection: $date,
                                                //                                                   in: dateRange,
                                                //                                                   displayedComponents: [.date, .hourAndMinute]
                                                //                                               )
                                                //                                               .datePickerStyle(.graphical)
                                                //                                               .labelsHidden()
                                            }
                                        }
                                        //                                           .overlay(
                                        //                                               RoundedRectangle(cornerRadius: 10)
                                        //                                                   .stroke(Color.gray, lineWidth: 1)
                                        //                                           )
                                        //                                           .padding(.horizontal)
                                        //                                    CustomTextField(icon: "calendar", title: "Expiry Date", hint: "Enter your Username", value: $expiryDateValue, showPassword: $show)
                                        //                                    //.padding(.bottom, 10)
                                        //                                        .frame(width: 170)
                                        
                                        
                                        //                                Text("Expiry Date")
                                        //                                    .font(Font.custom("Averia Sans Libre", size: 18))
                                        //                                    .foregroundColor(.black)
                                        //
                                        //                                ZStack {
                                        //                                    Rectangle()
                                        //                                        .foregroundColor(.clear)
                                        //                                        .frame(width: 169, height: 50)
                                        //                                        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
                                        //                                        .cornerRadius(15)
                                        //                                    Text("10/02/2022")
                                        //                                        .font(Font.custom("Averia Sans Libre", size: 16))
                                        //                                        .foregroundColor(.black)
                                        //                                }
                                    }
                                    
                                    VStack(alignment: .leading) {
                                        CustomTextField(icon: "person", title: "CVV", hint: "Enter your CVV", value: $cvvValue, showPassword: $show)
                                        //.padding(.bottom, 10)
                                            .frame(width: 170)
                                        //                                Text("CVV")
                                        //                                    .font(Font.custom("Averia Sans Libre", size: 18))
                                        //                                    .foregroundColor(.black)
                                        //
                                        //                                ZStack {
                                        //                                    Rectangle()
                                        //                                        .foregroundColor(.clear)
                                        //                                        .frame(width: 160, height: 50)
                                        //                                        .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
                                        //                                        .cornerRadius(15)
                                        //
                                        //
                                        //                                    Text("204")
                                        //                                        .font(Font.custom("Averia Sans Libre", size: 16))
                                        //                                        .foregroundColor(.black)
                                        //                                }
                                    }
                                }
                                .frame(width: 400)
                                //.padding(.top, 20)
                                
                                
                                
                                
                                Group {
                                    
                                    
                                    VStack(alignment: .leading){
                                        
                                        //                            Text("Name")
                                        //                                .font(Font.custom("Averia Sans Libre", size: 18))
                                        //                                .foregroundColor(.black)
                                        //
                                        //
                                        //
                                        //
                                        //                            ZStack{
                                        //                                Text("Ravishka Sathsara")
                                        //                                    .font(Font.custom("Averia Sans Libre", size: 16))
                                        //                                    .foregroundColor(.black)
                                        //
                                        //                                Rectangle()
                                        //                                    .foregroundColor(.clear)
                                        //                                    .frame(width: 348.42, height: 50)
                                        //                                    .background(Color(red: 0.85, green: 0.85, blue: 0.85).opacity(0.30))
                                        //                                    .cornerRadius(15)
                                        //                            }
                                        //                            DatePicker("Select a date", selection: $selectedDate, displayedComponents: .date)
                                        //                                          .datePickerStyle(MenuPickerStyle())
                                        //                                          .padding()
                                        
                                        CustomTextField(icon: "person", title: "Name", hint: "Enter your Username", value: $nameValue, showPassword: $show)
                                            .padding(.bottom, 20)
                                            .frame(width: 350)
                                    }
                                    //.padding()
                                    
                                    
                                    NavigationLink{
                                        CongratulationsView()
                                    } label:{
                                        
                                        Text("Pay Now")
                                            .font(Font.custom("Averia Sans Libre", size: 22).weight(.bold))
                                            .foregroundColor(.white)
                                            .frame(width: 380)
                                            .frame(height: 60)
                                            .lineSpacing(22)
                                            .background{
                                                Rectangle()
                                                    .foregroundColor(.clear)
                                                 
                                                
                                                    .background(Color(red: 0.10, green: 0.56, blue: 0.71))
                                                    .cornerRadius(10)
                                            }
                                        
                                    }
                                    .padding(.vertical)
                                    .padding(.bottom,70)
                                    
                                    //
//                                    .navigationBarBackButtonHidden(true)
//                                    .navigationBarItems(leading: CustomBackButton())
                                    
                                }
                                
                                
                                
                            }
                            
                            
                        }
                        
                    }
                    
                    .frame(height: 600)
                    .frame(width: 500)
                    .cornerRadius(20)
                    
                    //                .background(
                    //                    RoundedRectangle(cornerRadius: 30, style: .continuous)
                    //                        .fill(Color.white)
                    //                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: 4)
                    //                )
                    //.cornerRadius(30)
                    //.offset(y: -30)
                    //.frame(minWidth: .infinity)
                    //.edgesIgnoringSafeArea(.all)
                    .background(.white)
                    //.padding()
                    //.background()
                    //.cornerRadius(20)
                    //
                    
                }
                
            }
            .navigationBarTitle("Payment")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.10, green: 0.56, blue: 0.71))
            
        }
        
    //}
  
  
    
    
}



struct PaymentFormView_Previews: PreviewProvider {
    static var previews: some View {
        PaymentFormView()
    }
}

struct CustomBackButton: View {
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        Button(action: {
            presentationMode.wrappedValue.dismiss()
        }) {
            Image(systemName: "chevron.left")
                .foregroundColor(.white) // Customize the color here
                .font(.title)
        }
    }
}
