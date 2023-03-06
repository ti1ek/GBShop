//
//  AuthRequestFactory.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation
import Alamofire

protocol AuthRequestFactory {
    func login(userLogin: String, userPassword: String, completionHandler: @escaping (AFDataResponse<LoginResult>) -> Void)
    func logout(userLogin: String, userPassword: String, completionHandler: @escaping (AFDataResponse<DefaultResult>) -> Void)
}
