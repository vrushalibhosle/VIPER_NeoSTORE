//
//  RegisterEntity.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/13/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import Foundation

struct RegisterModel : Decodable{
    var status : Int?
    var data : RegisterData?
    var message : String?
    var user_msg : String?
}

struct RegisterData : Decodable{
    var first_name : String?
    var last_name : String?
    var email : String?
    var username : String?
    var gender : String?
    var phone_no : String?
    var is_active : Bool?
    var created : String?
    var modified : String?
    var access_token : String?
}


