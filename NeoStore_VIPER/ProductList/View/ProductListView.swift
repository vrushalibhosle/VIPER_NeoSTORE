//
//  ProductListView.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/25/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit
import SDWebImage

class ProductListView: UIViewController, UITableViewDataSource, UITableViewDelegate
{
    var presenter : ViewToPresenter_List?
    
    @IBOutlet weak var tableView : UITableView!
    var catId : Int?
    
    var productData : [ProductListDataModel]? {
        didSet {
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ProductListRouter.setupUI(view: self)
    
 tableView.register(UINib(nibName: "ProductListCell", bundle: nil), forCellReuseIdentifier: "ProductListCell")
        
      //  callProductListAPI(productCategoryId: catId!)
        presenter?.productListAPI(catId: catId ?? 0)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productData?.count ?? 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductListCell", for: indexPath) as! ProductListCell
        cell.productCenter.text = productData?[indexPath.row].created
        cell.productName.text = productData?[indexPath.row].name
        cell.productPrice.text = String("productData?[indexPath.row].cost")
        cell.productImg?.sd_setImage(with: URL(string: (productData?[indexPath.row].product_images)!), completed: nil)
return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        presenter?.pushToDeatil(view: self, productId: productData?[indexPath.row].id ?? 0)
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

extension ProductListView : PresenterToView_List {
    
    func updateData(jsonData: [ProductListModel]?) {
        self.productData = jsonData![0].data
    } 
}
