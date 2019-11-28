//
//  ViewController.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/13/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class LoginView: UIViewController {
    
    @IBOutlet weak var usernameText : UITextField!
    @IBOutlet weak var passwordText : UITextField!
    @IBOutlet weak var submitBtn : UIButton!
    var email = "UserTest123@gmail.com"
    var password = "Testuser1234"
    var loginArr : LoginModel?
    var presenter : LoginViewToLoginPresenter?
    var loginDataArray : [LoginData]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameText.text = email
        passwordText.text = password
        LoginRouter.loginModule(view: self)
        submitBtn.layer.cornerRadius = 5
    }
    
    @IBAction func onClickLogin(_ sender : UIButton) {
        let paramters : [String:Any] = ["email":usernameText.text!,"password":passwordText.text!]
        presenter?.callLoginAPI(param: paramters)
        presenter?.selectionView(fromView: self)
    }
    
    @IBAction func onClickAddBtn(_ sender : UIButton) {
        
        presenter?.showRestrationScreen(view: self)
        
        
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "RegisterView") as! RegisterView
//        navigationController?.pushViewController(vc, animated: true)
    }
    
   
    @IBAction func onClickTermsAndConditions(_ sender : UIButton) {
        
        let url = "https://useyourloaf.com/blog/querying-url-schemes-with-canopenurl/"
        let openUrl = URL(string: url)
        if UIApplication.shared.canOpenURL(openUrl!) {
            UIApplication.shared.openURL(openUrl!)
        }
    }
    
    @IBAction func onClickForgotPassword(_ sender : UIButton) {
        presenter?.showForgoPassScreen(view: self)
    }
    
}

extension LoginView : LoginPresenterToLoginView{
    func updateView(loginModel: LoginModel) {
        self.loginArr = loginModel
        
        let loginData = loginModel.data
        
        UserDefaults.standard.set(loginData?.username, forKey: "username")
        
        UserDefaults.standard.set(loginData?.access_token, forKey: "access_token")
        
        UserDefaults.standard.set(loginData?.email, forKey: "email") 
    }
}

 
