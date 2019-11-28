//
//  LoginRouter'.swift
//  NeoStore_VIPER
//
//  Created by webwerks2 on 11/19/19.
//  Copyright © 2019 webwerks2. All rights reserved.
//

import UIKit

class LoginRouter {
    
    static func loginModule(view : LoginView) {
        
        var presenter : LoginViewToLoginPresenter & LoginInteractorToLoginPresenter = LoginPresenter()
        
        let interactor = LoginInteractor()
        
        let router = LoginRouter()
        
        view.presenter = presenter
        presenter.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
        presenter.router = router 
    }
}

extension LoginRouter : LoginPresenterToLoginRouter , RegisterProtocol{
    func setLoginInfo(email: String, password: String) {
         
    }
    
    
    
    
    func pushToHome(fromView: UIViewController) {
        
        let appDelegate = UIApplication.shared.delegate as? AppDelegate
        let vc = fromView.storyboard?.instantiateViewController(withIdentifier: "ContainerVC") as! ContainerVC
        fromView.navigationController?.pushViewController(vc, animated: true)
         appDelegate?.window?.rootViewController =   UINavigationController(rootViewController: vc)
    }
    
    func pushToForgotPassword(fromView: UIViewController) {
         let vc = fromView.storyboard?.instantiateViewController(withIdentifier: "ForgotPasswordView") as! ForgotPasswordView
        fromView.navigationController?.pushViewController(vc, animated: true)
    }
    
    func pushToRegistration(fromView: UIViewController) {
        
        let vc = fromView.storyboard?.instantiateViewController(withIdentifier: "RegisterView") as! RegisterView
       vc.regDelegate = self
        fromView.navigationController?.pushViewController(vc, animated: true) 
    }
}
