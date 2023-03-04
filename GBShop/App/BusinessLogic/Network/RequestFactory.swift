//
//  RequestFactory.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation
import Alamofire

class RequestFactory {
    
    func makeErrorParser() -> AbstractErrorParser {
        return ErrorParser()
    }
    
    lazy var commonSession: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.httpShouldSetCookies = false
        configuration.headers = .default
        let manager = Session(configuration: configuration)
        return manager
    }()
    
    let sessionQueue = DispatchQueue.global(qos: .utility)
    
    func makeAuthRequestFactory() -> AuthRequestFactory {
        let errorParser = makeErrorParser()
        return Auth(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeRegistrationAndDataChangesFactory() -> RegistrationAndDataChangesFactory {
        let errorParser = makeErrorParser()
        return RegistrationAndChanges(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
    
    func makeProductsFactory() -> ProductsRequestFactory {
        let errorParser = makeErrorParser()
        return ProductsRequests(errorParser: errorParser, sessionManager: commonSession, queue: sessionQueue)
    }
}
