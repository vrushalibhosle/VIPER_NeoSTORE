//
//  changePasswordRouter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/21/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class changePasswordRouter {
    
    static func createModule(fromview : ChangePasswordView) {
        
        var presenter : ViewToPresenter_ChangePass & InteractorToPresenter_ChangePass = ChangePasswordPresenter()
        var interactor = ChangePasswordInteractor()
        
        fromview.presenter = presenter
        presenter.interactor = interactor
        
        
        
    }
    
}
