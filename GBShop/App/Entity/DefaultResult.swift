//
//  LogoutResult.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation

struct DefaultResult: Codable {
    let result: Int
    let userMessage: String?
    let errorMessage: String?
}
