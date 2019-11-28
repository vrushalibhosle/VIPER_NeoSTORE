//
//  RegisterRouter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/13/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class RegisterRouter : RegisterPresenterToRegisterRouter {
    func showHomePage(view: UIViewController, email: String, password: String) {
        let vc = view.storyboard?.instantiateViewController(withIdentifier: "LoginView") as! LoginView
        vc.email = email
        vc.password = password
        view.navigationController?.pushViewController(vc, animated: true)
    }
    
    static func registerModule(view : RegisterView) {
        
        var presenter:RegisterViewToRegisterPresenter & RegisterInteractorToRegisterPresenter = RegisterPresenter()
        let interactor = RegisterInteractor() 
        let router = RegisterRouter()
        
        view.presenter = presenter
        presenter.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
        presenter.router = router
        
    }
    
//    func showHomePage(view: UIViewController) {
//
//    }
}


