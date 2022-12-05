//
//  LoginView.swift
//  MeusGastos
//
//  Created by user on 04/12/22.
//

import UIKit

class LoginView: UIView, ViewCodeProtocol {
    
    //MARK: Image
    lazy var imageView = UIImageView()
    
    //MARK: Labels
    lazy var titleLabel = LabelDefault(text: "Login")
    lazy var emailLabel = LabelDefault(text: "Email", font: UIFont(name: "Arial", size: 20) ?? UIFont.systemFont(ofSize: 20))
    lazy var password = LabelDefault(text: "Senha", font: UIFont(name: "Arial", size: 20) ?? UIFont.systemFont(ofSize: 20))
    
    //MARK: Text Fields
    lazy var emailTextField = TextFieldDefault(placeholder: "Informe seu e-mail", keyboardType: .emailAddress)
    lazy var passwordTextField = TextFieldDefault(placeholder: "Informe sua senha", keyboardType: .default)
    
    //MARK: Buttons
    lazy var buttonLogin = ButtonDefault(title: "Entrar", color: .BRQBlue())
    lazy var buttonRegister = ButtonDefault(title: "Registrar", color: .BRQOrange())
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func buildViewHierachy() {
        addSubview(imageView)
        addSubview(titleLabel)
        addSubview(emailLabel)
        addSubview(emailTextField)
        addSubview(password)
        addSubview(passwordTextField)
        addSubview(buttonLogin)
        addSubview(buttonRegister)
    }
    
    func setupConstraints() {
        imageView.anchor (
            top: self.topAnchor,
            left: safeAreaLayoutGuide.leftAnchor,
            bottom: nil,
            right: safeAreaLayoutGuide.rightAnchor,
            paddingTop: 24,
            paddingLeft: 0,
            paddingBottom: 0,
            paddingRight: 0,
            width: 0,
            height: 175
        )
        
        titleLabel.anchor (
            top: imageView.bottomAnchor,
            left: self.leftAnchor,
            bottom: nil,
            right: self.rightAnchor,
            paddingTop: 0,
            paddingLeft: 24,
            paddingBottom: 0,
            paddingRight: 24,
            width: 0,
            height: 0
        )
        
        emailLabel.anchor (
            top: titleLabel.bottomAnchor,
            left: titleLabel.leftAnchor,
            bottom: nil,
            right: titleLabel.rightAnchor,
            paddingTop: 30,
            paddingLeft: 0,
            paddingBottom: 0,
            paddingRight: 0,
            width: 0,
            height: 0
        )
        
        emailTextField.anchor (
            top: emailLabel.bottomAnchor,
            left: emailLabel.leftAnchor,
            bottom: nil,
            right: emailLabel.rightAnchor,
            paddingTop: 12,
            paddingLeft: 0,
            paddingBottom: 0,
            paddingRight: 0,
            width: 0,
            height: 63
        )
        
        password.anchor (
            top: emailTextField.bottomAnchor,
            left: emailLabel.leftAnchor,
            bottom: nil,
            right: emailLabel.rightAnchor,
            paddingTop: 30,
            paddingLeft: 0,
            paddingBottom: 0,
            paddingRight: 0,
            width: 0,
            height: 0
        )
        
        passwordTextField.anchor (
            top: password.bottomAnchor,
            left: password.leftAnchor,
            bottom: nil,
            right: password.rightAnchor,
            paddingTop: 12,
            paddingLeft: 0,
            paddingBottom: 0,
            paddingRight: 0,
            width: 0,
            height: 63
        )
        
        buttonLogin.anchor (
            top: passwordTextField.bottomAnchor,
            left: self.leftAnchor,
            bottom: nil,
            right: self.rightAnchor,
            paddingTop: 30,
            paddingLeft: 24,
            paddingBottom: 0,
            paddingRight: 24,
            width: 0,
            height: 43
        )
        
        buttonRegister.anchor (
            top: buttonLogin.bottomAnchor,
            left: buttonLogin.leftAnchor,
            bottom: nil,
            right: buttonLogin.rightAnchor,
            paddingTop: 30,
            paddingLeft: 0,
            paddingBottom: 0,
            paddingRight: 0,
            width: 0,
            height: 43
        )
        
    }
    
    func addictionalConfiguration() {
        imageView.image = UIImage(named: "BRQ_Investimentos_Logo")
        imageView.contentMode = .scaleAspectFit
        buttonLogin.setBackgroundColor(UIColor.BRQBlue().withAlphaComponent(0.5), for: .disabled)
        buttonRegister.setBackgroundColor(UIColor.BRQOrange().withAlphaComponent(0.5), for: .disabled)
    }

    
}
