//
//  Interactor.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/13/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import Foundation
import  UIKit

class RegisterInteractor : RegisterPresenterToRegisterInteractor{
    var presenter: RegisterInteractorToRegisterPresenter?
    
    
    func getAPIData(param: [String : Any]) {
        
        callPostAPI(parameters : param)
    }
    
    
    
    
    
    
    func callPostAPI(parameters : [String:Any])  {
        
        
        
        let url = URL(string: "http://staging.php-dev.in:8844/trainingapp/api/users/register")!
        
        var urlRequest = URLRequest(url: url)
        
        urlRequest.httpMethod = "POST"
       
        
        var urlComponent = URLComponents()
        urlComponent.queryItems = []
        
        for (keys,value) in parameters{
            urlComponent.queryItems?.append(URLQueryItem(name: keys, value: (value as! String)  ))
            //        urlComponents.queryItems?.append(URLQueryItem()
        }
        
        urlRequest.httpBody = urlComponent.percentEncodedQuery?.data(using: .utf8)
        
        URLSession.shared.dataTask(with: urlRequest) { (data, response
            , error) in
            
            guard error == nil else {
                return
            }
            
            guard let data = data else { return }
            do {
                let decoder = JSONDecoder()
                let gitData = try decoder.decode(RegisterModel.self, from: data)
                
                print(gitData)
                
                self.presenter?.fetchAPIData(registerModel: gitData)
                
                
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    
                }
                
            } catch let err {
                print("Err", err)
            }
            }.resume()
    }
    
}
