//
//  ProductDetailPresenter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/26/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit
class ProductDetailPresenter : ViewToPresenter_Detail {
    
    
    var interactor: PresenterToInteractor_Detail?
    
    func callProductDetailAPI(pId: Int) {
        interactor?.fetchData(pId: pId)
    }
}

extension ProductDetailPresenter : InteractorToPresenter_Detail {
    
}

extension ProductDetailPresenter : PresenterToView_Detail {
    
}
