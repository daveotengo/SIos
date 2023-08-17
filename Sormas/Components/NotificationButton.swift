//
//  NotificationButton.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//

import SwiftUI

//
//  CartButton.swift
//  SweaterShop
//
//  Created by David Oteng on 24/07/2023.
//

import SwiftUI

struct NotificationButton: View {
    var numberOfProducts: Int
    
    var body: some View {
            ZStack(alignment: .topTrailing) {
                Image(systemName: "bell")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .foregroundColor(.black)

                if numberOfProducts > 0 {
                    Text("\(numberOfProducts)")
                        .font(.caption2).bold()
                        .foregroundColor(.white)
                        .frame(width: 15, height: 15)
                        .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                        .cornerRadius(50)
                }
            }
            
        
    }
}



struct NotificationButton_Previews: PreviewProvider {
    static var previews: some View {
        NotificationButton(numberOfProducts: 1)
    }
}
