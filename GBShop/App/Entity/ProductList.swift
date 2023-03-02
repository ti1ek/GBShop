//
//  ProductList.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation

struct ProductList: Codable {
    let id: Int
    let productName: String
    let price: Int
    
    enum CodingKeys: String, CodingKey {
        case id = "id_product"
        case productName = "product_name"
        case price
    }
}
