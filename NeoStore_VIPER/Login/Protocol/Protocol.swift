//
//  Protocol.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/19/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

protocol LoginViewToLoginPresenter {
    var view : LoginPresenterToLoginView? {get set}
    var interactor : LoginPresenterToLoginInteractor? {get set}
    var router : LoginPresenterToLoginRouter? {get set}
    
    func callLoginAPI(param : [String:Any])
    
    func selectionView(fromView : UIViewController)
    func showForgoPassScreen(view : UIViewController)
    
    func showRestrationScreen(view : UIViewController)
    
}

protocol  LoginPresenterToLoginView {
    
    func updateView(loginModel : LoginModel)
    
}

protocol LoginPresenterToLoginInteractor {
    
    var presenter : LoginInteractorToLoginPresenter? {get set}
    
    func fetchLoginAPIData(param : [String:Any])
    
}

protocol LoginInteractorToLoginPresenter {
    
    func getLoginAPIData(loginModel : LoginModel?)
    
}

protocol LoginPresenterToLoginRouter {
    
    func pushToHome(fromView : UIViewController)
    func pushToForgotPassword(fromView : UIViewController)
    func pushToRegistration(fromView : UIViewController)
}


