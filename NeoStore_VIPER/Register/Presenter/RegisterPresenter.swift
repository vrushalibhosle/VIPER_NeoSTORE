//
//  RegisterPresenter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/13/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class RegisterPresenter : RegisterViewToRegisterPresenter{
    
    
    var router: RegisterPresenterToRegisterRouter?
    
    var view: RegisterPresenterToRegisterView?
    
    
    var interactor: RegisterPresenterToRegisterInteractor?
   
    func callRegisterAPI(param: [String : Any]) {
         interactor?.getAPIData(param: param)
    }
    
    func showSelection(fromView: UIViewController) {
        router?.showHomePage(view: fromView, email: "", password: "")
    }
    
    
}

extension RegisterPresenter : RegisterInteractorToRegisterPresenter {
    func fetchAPIData(registerModel: RegisterModel?) {
        view?.updateAPIData(registerData: registerModel)
    }
}
 
