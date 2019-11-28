//
//  ChangePasswordInteractor.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/21/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import Foundation

class ChangePasswordInteractor : PresenterToInteractor_ChangePass {
    
    
    
    func fetchAPIData(param: [String : Any], header: [String:String]) {
        
        callAPI(param: param, header: header)
    }
    
    
    
    func callAPI(param : [String:Any], header : [String:String]) {
        
        let url = "http://staging.php-dev.in:8844/trainingapp/api/users/change"
        
        var urlConvert = URL(string: url)
        
        var urlRequest = URLRequest(url: urlConvert!)
        
        urlRequest.httpMethod = "POST"
        
        urlRequest.addValue(header["access_token"]!, forHTTPHeaderField: "application/json")
        urlRequest.setValue("application/json", forHTTPHeaderField: "application/json")
        
        
        var urlComponent = URLComponents()
        urlComponent.queryItems = []
        
        for (keys,value) in param{
            urlComponent.queryItems?.append(URLQueryItem(name: keys, value: (value as! String)  ))
            //        urlComponents.queryItems?.append(URLQueryItem()
        }
        
        urlRequest.httpBody = urlComponent.percentEncodedQuery?.data(using: .utf8)
        
        
        
        URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            print(data)
            
            do{
                let jsonDecode = try JSONDecoder().decode(ChangePasswordModel.self, from: data!)
                print(jsonDecode)
                
            }catch{
                
            }
        }.resume()
        
    }
}
