//
//  HomeView.swift
//  MeusGastos
//
//  Created by user on 06/12/22.
//

import Foundation
import UIKit

class HomeView: UIView, ViewCodeProtocol {
    //MARK: - Constants
    let screenWidth: CGFloat = UIScreen.main.bounds.width - 36
    
    //MARK: - Cousures
    
    //MARK: - Visual Elements
    lazy var segmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Em Alta","Em Baixa","Favoritos","Todos"])
        sc.selectedSegmentTintColor = .BRQOrange()
        sc.backgroundColor = .black
        sc.setTitleTextAttributes([.foregroundColor: UIColor.white], for: .normal)
        sc.layer.cornerRadius = 10
        sc.layer.borderWidth = 1
        sc.layer.borderColor = UIColor.BRQGray2().cgColor
        sc.selectedSegmentIndex = 3
        
        return sc
    }()
    
    lazy var viewInputs: UIView = {
        let view = UIView()
        view.backgroundColor = .BRQGray3()
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.BRQGray2().cgColor
        return view
    }()
    
    lazy var viewOutputs: UIView = {
        let view = UIView()
        view.backgroundColor = .BRQGray3()
        view.layer.cornerRadius = 10
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.BRQGray2().cgColor
        return view
    }()
    
    //MARK: - Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        test()
        
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - View Hierachy
    func buildViewHierachy() {
        addSubview(segmentedControl)
        addSubview(viewInputs)
        addSubview(viewOutputs)
    }
    
    //MARK: - Constraints
    func setupConstraints() {
        segmentedControl.anchor (
            top: safeAreaLayoutGuide.topAnchor,
            left: safeAreaLayoutGuide.leftAnchor,
            bottom: nil,
            right: safeAreaLayoutGuide.rightAnchor,
            paddingTop: 0,
            paddingLeft: 12,
            paddingBottom: 0,
            paddingRight: 12,
            width: 0,
            height: 0
        )
        
        viewInputs.anchor (
            top: segmentedControl.bottomAnchor,
            left: safeAreaLayoutGuide.leftAnchor,
            bottom: nil,
            right: nil,
            paddingTop: 12,
            paddingLeft: 12,
            paddingBottom: 0,
            paddingRight: 0,
            width: screenWidth/2,
            height: 150
        )
        
        viewOutputs.anchor (
            top: segmentedControl.bottomAnchor,
            left: viewInputs.rightAnchor,
            bottom: nil,
            right: safeAreaLayoutGuide.rightAnchor,
            paddingTop: 12,
            paddingLeft: 12,
            paddingBottom: 0,
            paddingRight: 12,
            width: 0,
            height: 150
        )
        
    }
    
    //MARK: - Configuration
    func addictionalConfiguration() {
        
    }
    
    func test() {
        let largura: CGFloat = screenWidth
        let separador: CGFloat = 12
        let vermelho: CGFloat = (screenWidth - 36) / 2
        let verde: CGFloat = (screenWidth - 36) / 2
        
        let final = separador + vermelho + separador + verde + separador
        
        print("Largura: \(largura) - Final: \(final)")
    }
    
}
