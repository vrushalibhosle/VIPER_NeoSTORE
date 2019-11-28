//
//  SingletoneManager.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/22/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class SingletonManager {
    
    static var share = SingletonManager()
    
    var accessToken = UserDefaults.standard.value(forKey: "access_token") 
}
