//
//  User.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation

struct User: Codable {
    let userLastname: String
    let userId: Int
    let userLogin: String
    let userName: String
    
    enum CodingKeys: String, CodingKey {
            case userLastname
            case userId
            case userName, userLogin
        }
}
