//
//  ProductListRouter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/26/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ProductListRouter : PresenterToRouter_List {
    
    
    
    static func setupUI(view: ProductListView) {
        
        var presenter : ViewToPresenter_List & InteractorToPresenter_List = ProductListPresenter()
        
        let interactor = ProductListInteractor()
        
        var router = ProductListRouter()
         view.presenter = presenter
        presenter.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
        presenter.router = router
    }
    
    func pushToProductDetailScreen(view: UIViewController,productID: Int) {
        
        let vc = view.storyboard?.instantiateViewController(withIdentifier: "ProductDetailView") as! ProductDetailView
        vc.product_Id = productID
        view.navigationController?.pushViewController(vc, animated: true)
       
    }
}
