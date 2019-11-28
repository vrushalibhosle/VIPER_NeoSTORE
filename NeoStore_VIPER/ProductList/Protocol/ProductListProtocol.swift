//
//  ProductListProtocol.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/26/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

protocol ViewToPresenter_List {
    
    func productListAPI(catId : Int)
    var interactor : PresenterToInteractor_List?{get set}
    var view : PresenterToView_List? {get set}
    var router : PresenterToRouter_List? {get set}
    func pushToDeatil(view : UIViewController, productId : Int)
}

protocol PresenterToView_List {
    func updateData(jsonData : [ProductListModel]?)
    
}

protocol PresenterToInteractor_List {
    var presenter : InteractorToPresenter_List? {get set}
    func fetchAPIData(catId : Int)
    
}

protocol PresenterToRouter_List {
    func pushToProductDetailScreen(view : UIViewController, productID : Int)
}

protocol InteractorToPresenter_List {
    
  //  var presenter : InteractorToPresenter_List? {get set}
    func sendRespToPresenter(res : [ProductListModel]?)
}
