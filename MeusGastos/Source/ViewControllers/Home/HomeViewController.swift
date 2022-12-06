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
        
        return view
    }()
    
    override func loadView() {
        self.view = homeView
    }
}
