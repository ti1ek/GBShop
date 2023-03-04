//
//  AbstractErrorParser.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import Foundation

protocol AbstractErrorParser {
    func parse(_ result: Error) -> Error
    func parse(response: HTTPURLResponse?, data: Data?, error: Error?) -> Error?
}
