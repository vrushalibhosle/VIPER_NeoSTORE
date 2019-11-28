//
//  LoginEntity.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/19/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import Foundation

struct  LoginModel : Codable{
    var status : Int?
    var data : LoginData?
    var message : String?
    var user_msg : String?
}

struct  LoginData : Codable{
    var id : Int?
    var first_name : String
    var last_name : String?
    var email : String?
    var username : String?
    var gender : String?
    var phone_no : String?
    var created : String?
    var modified : String?
    var access_token : String?
    
    
//    init(dict : [String:Any]) {
//        self.id = dict["id"] as? Int
//        self.first_name = dict["first_name"] as! String
//        self.last_name = dict["last_name"] as? String
//        self.email = dict["email"] as? String
//        
//        self.username = dict["username"] as? String
//        self.gender = dict["gender"] as? String
//        self.phone_no = dict["phone_no"] as? Int
//        self.created = dict["created"] as? String
//        self.modified = dict["modified"] as? String
//        self.access_token = dict["access_token"] as? String
//    }
}



