//
//  ViewControllerDefault.swift
//  MeusGastos
//
//  Created by user on 05/12/22.
//

import Foundation
import UIKit

class ViewControllerDefault: UIViewController {
    var afterHideKeyboard: (() -> Void)?
    var afterShowKeyboard: ((_ heightKeyboard: CGFloat) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupKeyboard()
    }
    
    // MARK: Setup Navigation
    func setupNavigation(with title: String) {
        navigationItem.title = title
        
        navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor:UIColor.white,
            NSAttributedString.Key.font: UIFont(name: "Helvetica", size: 17)!
        ]
        
        navigationController?.navigationBar.tintColor = .white
    }
    
    // MARK: StatusBar Style
    override var preferredStatusBarStyle: UIStatusBarStyle {
        
        return UIStatusBarStyle.lightContent
    }

    //MARK: Setup Keyboard
    fileprivate func setupKeyboard() {
        let _: NSObjectProtocol = NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (notification) in
            guard let value = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else { return }
            
            self.afterShowKeyboard?(value.cgRectValue.height)
        }
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.hideKeyboardByTappingOutside))
        self.view.addGestureRecognizer(tap)
    }
    
    @objc func hideKeyboardByTappingOutside() {
        self.view.endEditing(true)
        afterHideKeyboard?()
    }
}
