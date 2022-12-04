//
//  LoginViewController.swift
//  MeusGastos
//
//  Created by user on 02/12/22.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    
    lazy var loginView: LoginView = {
        let view = LoginView()
        view.backgroundColor = .black
        
        return view
    }()
    
    override func loadView() {
        self.view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
