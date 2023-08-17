//
//  SearchBar.swift
//  Sormas
//
//  Created by David Oteng on 15/08/2023.
//

import SwiftUI

struct SearchBar: View {
    var body: some View {
        HStack(spacing: 15){
            Image(systemName: "magnifyingglass")
                .font(.title2)
                .foregroundColor(.gray)
            TextField("Search", text: .constant(""))
                .disabled(true)
            Image(systemName: "mic")
                .font(.title2)
                .foregroundColor(.gray)
        }
        .padding(.vertical, 12)
        .padding(.horizontal)
        .background(
            RoundedRectangle(cornerRadius: 10)
                      .strokeBorder(Color.gray, lineWidth: 0.8)
                      .background(Color.gray.opacity(0.1))

//        Capsule()
//            .strokeBorder(Color.gray, lineWidth: 0.8)
        )
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
            .padding()
    }
}
