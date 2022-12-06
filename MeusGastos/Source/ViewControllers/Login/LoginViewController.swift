//
//  LoginViewController.swift
//  MeusGastos
//
//  Created by user on 02/12/22.
//

import Foundation
import UIKit

class LoginViewController: ViewControllerDefault {
    var onRegisterTap: (() -> Void)?
    var onLoginTap: (() -> Void)?
    
    private lazy var loginView: LoginView = {
        let view = MeusGastos.LoginView()
        view.backgroundColor = .black
        
        view.onRegisterTap = { self.onRegisterTap?() }
        view.onLoginTap = { self.onLoginTap?() }
        
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.afterHideKeyboard = {
            print("teclado se escondeu")
        }
        
        self.afterShowKeyboard = { heightKeyboard in
            print("teclado apareceu e sua altura é: \(heightKeyboard)")
        }
    }
}
