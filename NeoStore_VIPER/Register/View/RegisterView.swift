//
//  RegisterView.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/13/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

protocol RegisterProtocol : class {
    func setLoginInfo(email : String , password : String)
}

class RegisterView: UIViewController   {
    
    var registerArray : [RegisterData]?
    
    weak var regDelegate : RegisterProtocol?
    
    var presenter: RegisterViewToRegisterPresenter?

    @IBOutlet weak var firstName : UITextField!
    @IBOutlet weak var lastName : UITextField!
    @IBOutlet weak var email : UITextField!
    @IBOutlet weak var password : UITextField!
    @IBOutlet weak var confirmPassword : UITextField!
    @IBOutlet weak var phoneNumber : UITextField!
    @IBOutlet weak var registerBtn : UIButton!
    @IBOutlet weak var underlineLbl : UILabel!
    @IBOutlet weak var maleBtn: UIButton!
    @IBOutlet weak var femaleBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
        RegisterRouter.registerModule(view: self)
        
        
        Utilities.share.underlineText(underlinetextString: underlineLbl) 
        
        registerBtn.layer.cornerRadius = 5
        maleBtn.isSelected = true
        femaleBtn.isSelected = false 
    }
    
    
    @IBAction func genderBtnClick(_ sender: UIButton) {
        
        func selected() {
            
            if maleBtn.isSelected {
                
                femaleBtn.setBackgroundImage(UIImage(named: "chkn"), for: UIControl.State.normal)
                maleBtn.setBackgroundImage(UIImage(named: "chky"), for: UIControl.State.normal)
                
            } else {
                maleBtn.setBackgroundImage(UIImage(named: "chkn"), for: UIControl.State.normal)
                femaleBtn.setBackgroundImage(UIImage(named: "chky"), for: UIControl.State.normal)
            }
        }
        
        if  sender.tag == 1 {
            femaleBtn.isSelected = false
            maleBtn.isSelected = true
            
            selected()
            
        } else {
            
            maleBtn.isSelected = false
            femaleBtn.isSelected = true
            selected()
        } 
    }
    
    
    @IBAction func onClickToggleBtn(_ sender : UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
    
    @IBAction func onClickRegister(_ sender : UIButton) {
        
        let firstName = self.firstName.text
        let lastName = self.lastName.text
        let email = self.email.text
        let pass = self.password.text
        let confPass = self.confirmPassword.text
        let phnNumb = self.phoneNumber.text
        let gender = "M"
        
        let parameters = ["first_name": firstName, "last_name": lastName, "email":email, "password":pass, "confirm_password":confPass, "gender":gender, "phone_no":phnNumb]
        
        presenter?.callRegisterAPI(param: parameters as [String : Any])
//        presenter?.showSelection(fromView: self)
        
//        regDelegate?.setLoginInfo(email: email!, password: pass!)
        presenter?.router?.showHomePage(view:self, email: email ?? "", password: pass ?? "")
      
    }
}

extension RegisterView: RegisterPresenterToRegisterView {
    func updateAPIData(registerData: RegisterModel?) {
         print(registerData)
        
    }
}
