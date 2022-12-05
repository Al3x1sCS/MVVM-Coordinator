//
//  RegisterCoordinator.swift
//  MeusGastos
//
//  Created by user on 05/12/22.
//

import Foundation
import UIKit

class RegisterCoordinator: Coordinator {
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let viewController = RegisterViewController()
        
        viewController.onLoginTap = {
            self.showLogin()
        }
        
        self.navigationController.pushViewController(viewController, animated: false)
    }
    
    private func showLogin() {
        self.navigationController.popToRootViewController(animated: false)
    }
    
}
