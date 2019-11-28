//
//  ChangePasswordProtocol.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/21/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import Foundation

protocol ViewToPresenter_ChangePass {
    
    var interactor : PresenterToInteractor_ChangePass? {get set}
    
    func getAPIData(parameter : [String:Any], header : [String:String])
    
}

protocol PresenterToView_ChangePass {
    
}

protocol PresenterToInteractor_ChangePass {
    
    func fetchAPIData(param : [String:Any], header : [String:String])
    
}

protocol PresenterToRouter_ChangePass {
    
}

protocol InteractorToPresenter_ChangePass {
    
    
}

