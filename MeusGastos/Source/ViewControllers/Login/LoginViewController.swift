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
        let view = MeusGastos.LoginView()
        view.backgroundColor = .black
        
        return view
    }()
    
    override func loadView() {
        super.loadView()
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
