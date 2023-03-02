//
//  ProductsRequestFactory.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation
import Alamofire

protocol ProductsRequestFactory {
    func productList(pageNumber: Int, idCategory: Int, completionHandler: @escaping (AFDataResponse<[ProductList]>) -> Void)
    func product(idProduct: Int, completionHandler: @escaping (AFDataResponse<Product>) -> Void)
}
