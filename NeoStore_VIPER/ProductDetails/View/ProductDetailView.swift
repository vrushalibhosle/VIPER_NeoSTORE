//
//  ProductDetailView.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/26/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ProductDetailView : UIViewController {
    
    var presenter : ViewToPresenter_Detail?
    var product_Id : Int?
    
    @IBOutlet weak var productName : UILabel!
    @IBOutlet weak var productCategory : UILabel!
    @IBOutlet weak var productCenter : UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ProductDetailRouter.setUI(view: self)
        presenter?.callProductDetailAPI(pId: product_Id ?? 0)
        callWebService(productId: 1)
     }
    
    func callWebService(productId:Int) {
        
        
        let url = "http://staging.php-dev.in:8844/trainingapp/api/products/getList"
        
        let endPoint = "?product_id=\(productId)"
        
        let url1 = url + endPoint
        
        
        URLSession.shared.dataTask(with: URL(string: url1)!) { (data, response, error) in
            print(data)
            print(response)
            guard let data = data else {return}
            
            do{
                
                let decoder = JSONDecoder()
                let gitData = try decoder.decode(DetailModel.self, from: data)
                
                print(gitData)
                
                
                
                
                
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    let dictionaryDta = json["data"]
                    
                    if let httpStatus = response as? HTTPURLResponse ,   httpStatus.statusCode == 200 {
                        DispatchQueue.main.async {
                            
                        }
                    }
                }
                
            }catch{
                print(error.localizedDescription)
            }
            
            
            }.resume()
    }
}
