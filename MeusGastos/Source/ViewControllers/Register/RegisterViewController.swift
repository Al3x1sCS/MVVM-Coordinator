//
//  RegisterViewController.swift
//  MeusGastos
//
//  Created by user on 05/12/22.
//

import Foundation


class RegisterViewController: ViewControllerDefault {
    //MARK: Clousures
    var onLoginTap: (() -> Void)?
    
    //MARK: Visual Elements
    private lazy var registerView: RegisterView = {
        let view = MeusGastos.RegisterView()
        view.backgroundColor = .black
        
        view.onLoginTap = { self.onLoginTap?() }
        
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = registerView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}
