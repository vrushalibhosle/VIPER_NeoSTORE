//
//  ForgotPasswordInteractor.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/21/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ForgotPasswordInteractor : ForgotPass_PresenterToForgotPassInteractor {
    
func fetchAPIData(param: [String : Any]) { 
    callAPI(parameter: param)
}

    
    func callAPI(parameter : [String : Any]) {
        
        let url = "http://staging.php-dev.in:8844/trainingapp/api/users/forgot"
        let urlConvert = URL(string: url)
        
        guard let urlCon = urlConvert else {
            return
        }
        
        var urlReq = URLRequest(url: urlCon)
        
        urlReq.httpMethod = "POST"
        
        var urlComponent = URLComponents()
        urlComponent.queryItems = []
        
        for (key, value) in parameter {
            urlComponent.queryItems?.append(URLQueryItem(name: key, value: value as! String))
        }
        
        urlReq.httpBody = urlComponent.percentEncodedQuery?.data(using: .utf8)
        
        let task = URLSession.shared.dataTask(with: urlReq) { (data , response, error) in
            
            do {
                
                let decoder = JSONDecoder()
                let gitData = try decoder.decode(ForgotPasswordModel.self, from: data!)
                print(gitData)
                
                if let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    
                }
                
            }catch {
                print(error.localizedDescription)
            }
            
        }
        task.resume()
        
    }

}
