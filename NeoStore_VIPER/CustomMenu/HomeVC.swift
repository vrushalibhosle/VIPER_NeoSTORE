//
//  HomeVC.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/27/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
    }
    
    @IBAction func clickOnMenuBtn() {
        print("MENU click")
           NotificationCenter.default.post(name: NSNotification.Name("openDrawer"), object: nil)
    }
}
