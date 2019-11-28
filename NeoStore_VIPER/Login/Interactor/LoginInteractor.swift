//
//  LoginPresenter.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/19/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class LoginInteractor : LoginPresenterToLoginInteractor{
    var presenter: LoginInteractorToLoginPresenter?
    
    func fetchLoginAPIData(param: [String : Any]) {
        loginAPI(parameters: param)
    }
    
    
    
    func loginAPI(parameters : [String:Any]) {
        let url = "http://staging.php-dev.in:8844/trainingapp/api/users/login"
        let urlConvertable = URL(string: url)
        guard let urlReq = urlConvertable else {
            return
        }
        var urlRequest = URLRequest(url: urlReq)
        urlRequest.httpMethod = "POST"
        
        
        var urlComponent = URLComponents()
        urlComponent.queryItems = []
        
        for (keys,value) in parameters{
            urlComponent.queryItems?.append(URLQueryItem(name: keys, value: (value as! String)  ))
            //        urlComponents.queryItems?.append(URLQueryItem()
        }
        
        urlRequest.httpBody = urlComponent.percentEncodedQuery?.data(using: .utf8)
        let session = URLSession.shared
        
        let task = session.dataTask(with: urlRequest) { (data, response, error) in
            
            
            guard  error == nil else {
                print(error)
                return
            }
            
            guard let dataResponse = response else {
                print("did not rece")
                return
            }
            
            if let httpStatus = response as? HTTPURLResponse, httpStatus.statusCode != 200
            {
                // check for http errors
                print("statusCode should be 200, but is \(httpStatus.statusCode)")
                print("response = \(String(describing: response))")
            }
            
            do{
                
                let decoder = JSONDecoder()
                let gitData = try decoder.decode(LoginModel.self, from: data!)

                print(gitData)
                
                
                
                self.presenter?.getLoginAPIData(loginModel: gitData)
                
                
                
                if let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as? [String: Any] {
                    print(json)
                    let dictionaryDta = json["data"]
                    
                    if let httpStatus = response as? HTTPURLResponse ,   httpStatus.statusCode == 200 {
                        DispatchQueue.main.async {
                            
//                            let storyboard = UIStoryboard(name: "Main", bundle: nil)
//                            let appDelegate = UIApplication.shared.delegate as! AppDelegate
//                            let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeVc") as! HomeVc
//                            appDelegate.window!.rootViewController = UINavigationController(rootViewController: homeVC)
                        }
                    }
                }
                
            }catch{
                print(error.localizedDescription)
            }
        }
        task.resume()
    } 
}
