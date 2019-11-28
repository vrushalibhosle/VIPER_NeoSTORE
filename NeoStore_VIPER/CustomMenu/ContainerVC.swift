//
//  ContainerVC.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/27/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ContainerVC: UIViewController {
    
    @IBOutlet weak var sideMenuWidth : NSLayoutConstraint!
    
    var drawerOpen = false
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(clickOnToggle), name: NSNotification.Name(rawValue: "openDrawer"), object: nil)
 
    }
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
    }
    @objc func clickOnToggle() {
        
        if drawerOpen {
            sideMenuWidth.constant = -193
            drawerOpen = false
        } else {
            sideMenuWidth.constant = 0
            drawerOpen = true
        }
    }
}
