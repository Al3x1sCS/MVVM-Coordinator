//
//  ButtonDefault.swift
//  MeusGastos
//
//  Created by user on 05/12/22.
//

import Foundation
import UIKit

class ButtonDefault: UIButton {
    init(title: String, color: UIColor) {
        super.init(frame: .zero)
        
        initDefault(title: title, color: color)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(title: String, color: UIColor) {
        let attributedText = NSMutableAttributedString(string: title, attributes: [
            NSAttributedString.Key.font: UIFont(name: "Arial", size: 24) as Any,
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.kern: 1
        ])
        
        self.setTitle(title, for: .normal)
        self.backgroundColor = color
        self.layer.cornerRadius = 20
        
        self.setAttributedTitle(attributedText, for: .normal)
    }
    
    enum ButtonState {
        case normal
        case disabled
    }
    
    private var disabledBackgroundColor: UIColor?
    private var defaultBackgroundColor: UIColor? {
        didSet {
            backgroundColor = defaultBackgroundColor
        }
    }
    
    override var isEnabled: Bool {
        didSet {
            if isEnabled {
                if let color = defaultBackgroundColor {
                    self.backgroundColor = color
                }
            }
            else {
                if let color = disabledBackgroundColor {
                    self.backgroundColor = color
                }
            }
        }
    }
    
    func setBackgroundColor(_ color: UIColor?, for state: ButtonState) {
        switch state {
        case .disabled:
            disabledBackgroundColor = color
        case .normal:
            defaultBackgroundColor = color
        }
    }
    
}

