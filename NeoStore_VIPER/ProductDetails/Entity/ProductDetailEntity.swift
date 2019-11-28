//
//  ProductDetailEntity.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/26/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import Foundation

struct  DetailModel : Codable {
    var status : Int?
    var data : [DetailDataModel]?
}

struct DetailDataModel : Codable {
    var id : Int?
    var name : String?
    var producer : String?
    var description : String?
    var cost : Int?
    var rating : Int?
    var created : String?
    var modified : String? 
}
