//
//  RegistrationAndDataChangesFactory.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation

import Alamofire

protocol RegistrationAndDataChangesFactory {
    func registration(userId: Int, userLogin: String, userPassword: String, userName: String, userLastname: String, userEmail: String, userCreditCard: String, userBio: String, completionHandler: @escaping (AFDataResponse<DefaultResult>) -> Void)
    func dataChange(userId: Int, userLogin: String, userPassword: String, userName: String, userLastname: String, userEmail: String, userCreditCard: String, userBio: String, completionHandler: @escaping (AFDataResponse<DefaultResult>) -> Void)
}
