//
//  HomeViewController.swift
//  MeusGastos
//
//  Created by user on 06/12/22.
//

import Foundation
import UIKit

class HomeViewController: ViewControllerDefault {
    private lazy var homeView: HomeView = {
        let view = HomeView()
        view.backgroundColor = .black
        
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = homeView
    }
    
    override func viewDidLoad() {
        setupNavigation(with: "Home")
        self.tabBarController?.navigationItem.hidesBackButton = true
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        self.navigationItem.setHidesBackButton(true, animated: false)
    }
    
}
