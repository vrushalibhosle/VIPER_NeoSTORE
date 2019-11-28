//
//  ProductListPresenter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/26/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ProductListPresenter : ViewToPresenter_List {
    
    
    func pushToDeatil(view: UIViewController, productId: Int) {
        router?.pushToProductDetailScreen(view: view, productID: productId)
    }
    
    var router: PresenterToRouter_List?
    var view: PresenterToView_List?
    var interactor: PresenterToInteractor_List?
    
    func productListAPI(catId: Int) {
        interactor?.fetchAPIData(catId: catId)
    }
    
}

extension ProductListPresenter : InteractorToPresenter_List {
    func sendRespToPresenter(res: [ProductListModel]?) {
      view?.updateData(jsonData: res)
    }
}


