//
//  Product.swift
//  Sormas
//
//  Created by David Oteng on 13/08/2023.
//

import Foundation

struct Product: Identifiable, Hashable{
    var id = UUID()
    var type: ProductType
    var title: String
    var subtitle: String
    var price: String
    var productImage: String
}

enum ProductType: String, CaseIterable, Hashable{
    case Wearable = "Wearable"
    case Laptops = "Laptops"
    case Phones = "Phones"
    case Tablets = "Tablets"
}
