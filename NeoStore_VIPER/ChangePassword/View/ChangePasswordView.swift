//
//  ChangePasswordView.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/21/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class ChangePasswordView : UIViewController {
    
    var presenter : ViewToPresenter_ChangePass?
    
    @IBOutlet weak var currentPass : UITextField!
    @IBOutlet weak var newPass : UITextField!
    @IBOutlet weak var confirmPass : UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changePasswordRouter.createModule(fromview: self)
    }
    
    @IBAction func clickOnResetPass(_ sender : UIButton) {
        
        var parameter = ["old_password" : currentPass.text, "password":newPass.text, "confirm_password":confirmPass.text]
        
        var headers = ["access_token":"5dd6ab49e7693"]
        
        presenter?.getAPIData(parameter: parameter, header: headers)
        
        
    }
}
