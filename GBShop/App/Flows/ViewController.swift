//
//  ViewController.swift
//  GBShop
//
//  Created by Tilek Koszhanov on 3/2/23.
//

import UIKit

class ViewController: UIViewController {
    
    let requestFactory = RequestFactory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getProduct(idProduct: 123)
    }
    
    func authLogin(userName: String, password: String) {
        let auth = requestFactory.makeAuthRequestFactory()
        auth.login(userName: userName, password: password) { response in
            switch response.result {
            case .success(let login):
                print(login)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func authLogout(idUser: Int) {
        let auth = requestFactory.makeAuthRequestFactory()
        auth.logout(idUser: idUser) { response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func userRegistration(idUser: Int, userName: String, password: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String) {
        let registration = requestFactory.makeRegistrationAndDataChangesFactory()
        registration.registration(idUser: idUser, userName: userName, password: password, userEmail: userEmail, userGender: userGender, userCreditCardNumber: userCreditCardNumber, userBio: userBio) { response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func userDataChanges(idUser: Int, userName: String, password: String, userEmail: String, userGender: String, userCreditCardNumber: String, userBio: String) {
        let userChanges = requestFactory.makeRegistrationAndDataChangesFactory()
        userChanges.dataChange(idUser: idUser, userName: userName, password: password, userEmail: userEmail, userGender: userGender, userCreditCardNumber: userCreditCardNumber, userBio: userBio) { response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getProductList(pageNumber: Int, idCategory: Int) {
        let getProducts = requestFactory.makeProductsFactory()
        getProducts.productList(pageNumber: pageNumber, idCategory: idCategory) { response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func getProduct(idProduct: Int) {
        let getProducts = requestFactory.makeProductsFactory()
        getProducts.product(idProduct: idProduct) { response in
            switch response.result {
            case .success(let result):
                print(result)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
