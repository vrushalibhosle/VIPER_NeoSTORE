//
//  ChangePasswordPresenter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/21/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ChangePasswordPresenter : ViewToPresenter_ChangePass {
    
    var interactor: PresenterToInteractor_ChangePass?
    
    
    func getAPIData(parameter: [String : Any], header: [String:String]) {
        interactor?.fetchAPIData(param: parameter, header: header)
    }
    
    
    
}

extension ChangePasswordPresenter : InteractorToPresenter_ChangePass {
    
    
}

