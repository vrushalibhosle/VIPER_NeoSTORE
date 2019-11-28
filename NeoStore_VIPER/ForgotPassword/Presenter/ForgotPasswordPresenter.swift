//
//  ForgotPasswordPresenter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/21/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ForgotPasswordPresenter : ForgotPass_ViewToPresenter {
    
    
    var interactor: ForgotPass_PresenterToForgotPassInteractor?
    
    func callForgotPassAPI(param: [String : Any]) {
          interactor?.fetchAPIData(param: param)
    }
    
    
    
     
}
extension ForgotPasswordPresenter : Forgotpass_InteractorToPresenter {
    
}


