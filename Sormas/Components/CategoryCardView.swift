//
//  CategoriesCardView.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//


import SwiftUI

struct CategoryCardView: View {
  
    var category : Category
    var body: some View {
        ZStack{
            Color(red: 0.10, green: 0.56, blue: 0.71)
            ZStack(alignment: .bottomTrailing){
                HStack(alignment: .center){
                    Text(category.name)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 1)
                    
                }

            }
        }
        .frame(width: 185, height: 80)
        .cornerRadius(15)
    }
}


struct CategoryCardView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCardView(category: categoryList[0])
    }
}
