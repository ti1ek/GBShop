//
//  ProductList.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation

struct ProductList: Codable {
    let count: Int
    let productList: [Product]
}
