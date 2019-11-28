//
//  ProductListEntity.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/25/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import Foundation

struct ProductListModel : Codable {
    var status : Int?
    var data : [ProductListDataModel]?
}

struct ProductListDataModel : Codable {
    var id : Int?
    var product_category_id : Int?
    var name : String?
    var producer : String?
    var description : String?
    var cost : Int?
    var rating : Int?
    var created : String?
    var modified : String?
    var product_images : String?
}
