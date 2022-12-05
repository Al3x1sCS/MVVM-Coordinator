//
//  LabelDefault.swift
//  MeusGastos
//
//  Created by user on 05/12/22.
//

import Foundation
import UIKit

class LabelDefault: UILabel {
    init(text: String) {
        super.init(frame: .zero)
        
        initDefault(text: text, font: UIFont(name: "Arial-Black", size: 25) ?? UIFont.systemFont(ofSize: 25))
    }
    
    init(text: String, font: UIFont) {
        super.init(frame: .zero)
        
        initDefault(text: text, font: font)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initDefault(text: String, font: UIFont) {
        self.text = text
        self.textColor = .white
        self.font = UIFont(name: "Arial-Black", size: 25)
    }
    
}
