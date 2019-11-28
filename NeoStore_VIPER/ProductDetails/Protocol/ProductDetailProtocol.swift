//
//  ProductDetailProtocol.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/26/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

protocol ViewToPresenter_Detail {
    
    var interactor : PresenterToInteractor_Detail? {set get}
    func callProductDetailAPI(pId : Int)
    
}

protocol PresenterToView_Detail {
    
}

protocol PresenterToInteractor_Detail {
    
    func fetchData(pId : Int)
    
}

protocol PresenterToRouter_Detail {
    
}

protocol InteractorToPresenter_Detail {
    
}




