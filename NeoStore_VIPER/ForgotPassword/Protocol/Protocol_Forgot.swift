//
//  Protocol.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/21/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

protocol ForgotPass_ViewToPresenter {
    
    var interactor : ForgotPass_PresenterToForgotPassInteractor? {get set}
    func callForgotPassAPI(param : [String : Any])
     
    
}

protocol  ForgotPass_PresenterToView {
    
}

protocol ForgotPass_PresenterToForgotPassInteractor {
    func fetchAPIData(param : [String : Any])
}

protocol ForgotPass_PresenterToRouter {
    
    
    
}

protocol Forgotpass_InteractorToPresenter {
    
}


