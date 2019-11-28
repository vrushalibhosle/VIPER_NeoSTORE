//
//  ForgotPassword.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/20/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ForgotPasswordView: UIViewController {
    
    var presenter : ForgotPass_ViewToPresenter?
    
    @IBOutlet weak var emailText : UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
         ForgotPasswordRouter.ForgotPasswordModule(view: self)
    }
    
    @IBAction func clickOnReset(_ sender : UIButton) {
        
        let parameter = ["email":emailText.text]
        
        presenter?.callForgotPassAPI(param: parameter)
         
        // callForgotpaswordAPI()
    }
    
}

