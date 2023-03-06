//
//  Product.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation

struct Product: Codable {
    let productPrice: Int
    let productName: String
    let productDescription: String
    
    enum CodingKeys: String, CodingKey {
            case productPrice
            case productName
            case productDescription
        }
}
