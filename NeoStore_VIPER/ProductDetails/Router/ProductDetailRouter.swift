//
//  ProductDetailRouter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/26/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ProductDetailRouter {
    
    static func setUI(view : ProductDetailView) {
        
        var presenter : ViewToPresenter_Detail & InteractorToPresenter_Detail = ProductDetailPresenter()
        
        var router = ProductDetailRouter()
        
        let interactor = ProductDetailInteractor()
        view.presenter = presenter
        presenter.interactor = interactor
        
    }
}
