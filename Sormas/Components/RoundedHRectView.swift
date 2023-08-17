//
//  RoundedHRectView.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//


import SwiftUI

protocol Named {
    var name: String { get }
}

extension Identifiable where Self: Named {
    var name: String {
        return "\(Self.self)"
    }
}
struct  RoundedHRectView<T: Identifiable & Named>: View {
    var obj : T
    var width: CGFloat?
    var height : CGFloat?
    var foregroundColor : Color
    var backgroundColor: Color
    var body: some View {
        ZStack{
            backgroundColor
            ZStack(alignment: .bottomTrailing){
                HStack(alignment: .center){
                    Text(obj.name)
                        .font(.headline)
                        .foregroundColor(foregroundColor)
                        .padding(.vertical, 1)
                    
                }

            }
        }
        .frame(width: width, height: height)
        .cornerRadius(15)
    }
}




struct RoundedHRectView_Previews: PreviewProvider {
    static var previews: some View {
        RoundedHRectView(obj: Category(name: "Sample Category", image: "", description: "desc"),width: 185,height: 80, foregroundColor: Color.white,backgroundColor: Color(red: 0.10, green: 0.56, blue: 0.71))
    }
}
