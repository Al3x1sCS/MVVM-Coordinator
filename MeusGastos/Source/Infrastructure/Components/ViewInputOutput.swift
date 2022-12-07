//
//  ViewInputOutput.swift
//  MeusGastos
//
//  Created by user on 07/12/22.
//

import Foundation
import UIKit

//TODO: MODEL!!!!
enum TypeEntry {
    case Input
    case Output
}

class ViewInputOutput: UIView, ViewCodeProtocol {
    //MARK: - Cousures
    
    //MARK: - Properties
    var typeEntry: TypeEntry
    
    //MARK: - Visual Elements
    lazy var icon: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "search")
        
        return imageView
    }()
    
    lazy var valueLabel = LabelDefault(text: "", font: UIFont(name: "Arial-Black", size: 25) ?? UIFont.systemFont(ofSize: 16, weight: .bold), alignment: .center)
    
    lazy var subtitleLabel = LabelDefault(text: "", font: UIFont(name: "Arial-Black", size: 14) ?? UIFont.systemFont(ofSize: 16, weight: .bold), alignment: .center)
    
    //MARK: - Init
    init(typeEntry: TypeEntry) {
        self.typeEntry = typeEntry
        
        super.init(frame: .zero)
        
        self.setupView()
        setTypeEntry()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setValue(value: Double) {
        valueLabel.text = String(value)
    }
    
    private func setTypeEntry() {
        switch self.typeEntry {
            
        case .Input:
            icon.image = UIImage(named: "arrowUp")
            icon.contentMode = .scaleAspectFit
            subtitleLabel.text = "Entradas do mês"
            subtitleLabel.textColor = .variationGreen()
            valueLabel.text = "R$ 15.047,98"
            valueLabel.textColor = .variationGreen()
            self.backgroundColor = .viewBlue()
            
        case .Output:
            icon.image = UIImage(named: "arrowDown")
            icon.contentMode = .scaleAspectFit
            subtitleLabel.text = "Saídas do mês"
            subtitleLabel.textColor = .variationRed()
            valueLabel.text = "R$ 1.478,76"
            valueLabel.textColor = .variationRed()
            self.backgroundColor = .viewOrange()
        }
    }
    
    //MARK: - View Hierachy
    func buildViewHierachy() {
        addSubview(icon)
        addSubview(valueLabel)
        addSubview(subtitleLabel)
        
    }
    
    //MARK: - Constraints
    func setupConstraints() {
        icon.anchor (
            top: self.topAnchor,
            left: self.leftAnchor,
            bottom: nil,
            right: nil,
            paddingTop: 12,
            paddingLeft: 12,
            paddingBottom: 0,
            paddingRight: 0,
            width: 30,
            height: 30
        )
        
        valueLabel.anchor (
            top: icon.bottomAnchor,
            left: self.leftAnchor,
            bottom: nil,
            right: self.rightAnchor,
            paddingTop: 20,
            paddingLeft: 12,
            paddingBottom: 0,
            paddingRight: 12,
            width: 0,
            height: 0
        )
        
        subtitleLabel.anchor (
            top: valueLabel.bottomAnchor,
            left: self.leftAnchor,
            bottom: nil,
            right: self.rightAnchor,
            paddingTop: 4,
            paddingLeft: 12,
            paddingBottom: 0,
            paddingRight: 12,
            width: 0,
            height: 0
        )
        
    }
    
    //MARK: - Configuration
    func addictionalConfiguration() {
        
    }
    
}

