//
//  ForgotPasswordRouter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/21/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ForgotPasswordRouter {
    
    static func ForgotPasswordModule(view : ForgotPasswordView) {
    
    var presenter : ForgotPass_ViewToPresenter & Forgotpass_InteractorToPresenter = ForgotPasswordPresenter()
        
        let interactor = ForgotPasswordInteractor()
        view.presenter = presenter
        presenter.interactor = interactor
     
    
}
}
