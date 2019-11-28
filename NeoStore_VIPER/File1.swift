//
//  File.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/14/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import Foundation



struct Constant {
    static let serverURL = "http://staging.php-dev.in:8844/trainingapp/api/"
}

struct UIConstant {
    static let register = "users/register"
    static let login = "users/login"
    static let forgotPassword = "users/forgot"
    static let changePassword = "users/change"
    static let updateAccDetials = "users/update"
    static let getAccountDetails = "users/getUserData"
    static let fetchAccDetails = "users/getUserData"
    static let getProductList = "products/getList"
    static let getProductDetails = "products/getDetail"
    static let setProductRating = "products/setRating"
    static let addToCart = "addToCart"
}

//class Utilities {
//    static func addToCartPostData(dict:[String:Any], url:URL) {
//        let parameters = dict
////        let loginURL = getTestURL(path)
//        //        let loginURL = "http://staging.php-dev.in:8844/trainingapp/api/addToCart"
////        let url = URL(string: loginURL)
////        var urlReqeust = postRequest(url: url!)
////       url.setValue("application/x-www-form-urlencoded;charset=UTF-8", forHTTPHeaderField: "Content-Type")
////        let token = GlobleInstance.shared.getAccessToken()
////        urlReqeust.setValue(token, forHTTPHeaderField: "access_token")
//        var urlComponent = URLComponents()
//        urlComponent.queryItems = []
//        
//        for (keys,value) in parameters{
//            urlComponent.queryItems?.append(URLQueryItem(name: keys, value: (value as! String)  ))
//            //        urlComponents.queryItems?.append(URLQueryItem()
//        }
//        
//        urlReqeust.httpBody = urlComponent.percentEncodedQuery?.data(using: .utf8)
//        let task = URLSession.shared.dataTask(with: urlReqeust as URLRequest, completionHandler: { responseData , response , error in
//            var statusCode = 0
//            
//            if response != nil {
//                let httpResponse = response as! HTTPURLResponse
//                statusCode = httpResponse.statusCode
//            }
//            else {
//                statusCode = 0
//            }
//            
//            guard let data = responseData , let jsonData = try? JSONSerialization.jsonObject(with: data, options: [])
//                else {
//                    DispatchQueue.main.async {
//                        completionHandler(statusCode,nil,error)
//                    }
//                    return
//            }
//            DispatchQueue.main.async {
//                print(jsonData)
//                completionHandler(statusCode,jsonData as? [String:Any],error)
//            }
//        })
//        task.resume()
//    }
//    
//    
//}
//}
