//
//  LoginPresenter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/19/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class LoginPresenter : LoginViewToLoginPresenter {
    
    
    var router: LoginPresenterToLoginRouter?
    var view: LoginPresenterToLoginView?
    var interactor: LoginPresenterToLoginInteractor?
    
    func callLoginAPI(param: [String : Any]) {
        interactor?.fetchLoginAPIData(param: param)
    }
    
    func selectionView(fromView from: UIViewController) {
        router?.pushToHome(fromView: from)
    }
    
    func showForgoPassScreen(view: UIViewController) {
         router?.pushToForgotPassword(fromView: view)
    }
    
    
    func showRestrationScreen(view: UIViewController) {
         router?.pushToRegistration(fromView: view)
    } 
    
}

extension LoginPresenter : LoginInteractorToLoginPresenter {
    func getLoginAPIData(loginModel: LoginModel?) {
        view?.updateView(loginModel: loginModel!)
    } 
}
