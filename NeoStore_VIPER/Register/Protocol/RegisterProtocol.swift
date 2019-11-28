//
//  RegisterProtocol.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/18/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit


protocol RegisterViewToRegisterPresenter {
    var interactor : RegisterPresenterToRegisterInteractor? {get set}
    var router : RegisterPresenterToRegisterRouter? {get set}
    
    var view : RegisterPresenterToRegisterView? {get set}
    func callRegisterAPI(param : [String:Any])
    func showSelection(fromView : UIViewController)
     
}

protocol RegisterPresenterToRegisterView {
    
    func updateAPIData(registerData : RegisterModel?)
    
}


protocol RegisterPresenterToRegisterRouter {
      
    func showHomePage(view : UIViewController,email:String,password:String)
}

protocol RegisterPresenterToRegisterInteractor {
    
    var presenter : RegisterInteractorToRegisterPresenter? {get set}
    
    func getAPIData(param : [String:Any])
    
}

protocol RegisterInteractorToRegisterPresenter {
    
    func fetchAPIData(registerModel:RegisterModel?)
    
}



