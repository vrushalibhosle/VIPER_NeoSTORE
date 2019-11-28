//
//  Menu_View.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/25/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class MenuView : UIViewController , UITableViewDelegate, UITableViewDataSource{
    
    
    @IBOutlet weak var tableView : UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "MenuCell", bundle: nil), forCellReuseIdentifier: "MenuCell")
        tableView.separatorStyle = .none
       
    }
    
    var menuListArray = ["HOME","My Cart", "Tables", "Sofas", "Chairs", "Cupboards", "MyAccount", "Store Locator", "My Orders", "Logout"]
    var menuImageArray = [UIImage(named: "menu_icon"),UIImage(named: "menu_icon"),UIImage(named: "shoppingcart_icon"), UIImage(named: "table"), UIImage(named: "sofa_icon"), UIImage(named: "chair"), UIImage(named: "cupboard_icon"), UIImage(named: "username_icon"), UIImage(named: "storelocator_icon"), UIImage(named: "myorders_icon"), UIImage(named: "logout_icon")]
 
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuListArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as! MenuCell
        cell.listLbl.text = menuListArray[indexPath.row]
         cell.listImg.image = menuImageArray[indexPath.row]
        cell.backgroundColor = UIColor.black
        cell.listLbl.textColor = UIColor.white
        cell.selectionStyle = .none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        NotificationCenter.default.post(name: NSNotification.Name("openDrawer"), object: nil)
        
        switch indexPath.row {
        case 0:
           NotificationCenter.default.post(name: NSNotification.Name("showHomeScreen"), object: nil)
            
        case 1:
            NotificationCenter.default.post(name: NSNotification.Name("showCartScreen"), object: nil)
        
        default:
             print("")
            break
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
