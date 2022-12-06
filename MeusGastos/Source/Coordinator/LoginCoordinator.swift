//
//  LoginCoordinator.swift
//  MeusGastos
//
//  Created by user on 02/12/22.
//

import UIKit

class LoginCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = LoginViewController()
        
        viewController.onRegisterTap = {
            self.showRegister()
        }
        
        viewController.onLoginTap = {
            self.showHome()
        }
        
        self.navigationController.pushViewController(viewController, animated: true)
    }
    
    private func showRegister() {
        let coordinator = RegisterCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
    private func showHome() {
        let coordinator = HomeCoordinator(navigationController: self.navigationController)
        coordinator.start()
    }
    
}
