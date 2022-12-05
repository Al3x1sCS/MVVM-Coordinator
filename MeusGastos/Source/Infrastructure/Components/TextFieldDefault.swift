//
//  TextFieldDefault.swift
//  MeusGastos
//
//  Created by user on 05/12/22.
//

import Foundation
import UIKit


class TextFieldDefault: UITextField {
    init(placeholder: String, keyboardType: UIKeyboardType) {
        super.init(frame: .zero)
        initDefault(placeholder: placeholder)
        self.keyboardType = keyboardType
    }
    
    init(placeholder: String, isSecureTextEntry: Bool) {
        super.init(frame: .zero)
        initDefault(placeholder: placeholder)
        self.isSecureTextEntry = isSecureTextEntry
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(placeholder: String) {
        self.backgroundColor = .black
        self.textColor = .white
        self.placeholder = placeholder
        self.layer.cornerRadius = 10
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.temaGray().cgColor
        self.setPlaceHolderColor(UIColor.temaGray())
        self.setLeftPaddingPoints(10)
    }
}
