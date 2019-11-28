//
//  ProductListInteractor.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/26/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ProductListInteractor : PresenterToInteractor_List {
    
    var presenter: InteractorToPresenter_List?
    
    
    func fetchAPIData(catId: Int) {
        callProductListAPI(catId: catId)
        
    }
    
    func callProductListAPI(catId : Int) {
        
        //        var parameters = ["product_category_id": productCategoryId]
        
        let url = "http://staging.php-dev.in:8844/trainingapp/api/products/getList"
        
        let endPoint = "?product_category_id=\(catId)"
        
        let url1 = url + endPoint
        
        URLSession.shared.dataTask(with: URL(string: url1)!) { (data, resp, err) in
            // print(resp)
            
            guard let data = data else {return}
            
            do {
                let jsonDecoder = try JSONDecoder().decode(ProductListModel.self, from: data)
                
                print(jsonDecoder)
                self.presenter?.sendRespToPresenter(res: [jsonDecoder])
//                self.productData = jsonDecoder.data
//
//                for i in self.productData ?? [] {
//                    self.productData?.append(i)
//                }
//                print(self.productData)
            }catch {
                
            }
            }.resume()
    }
}
