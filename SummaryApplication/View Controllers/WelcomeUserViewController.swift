//
//  WelcomeUserViewController.swift
//  SummaryApplication
//
//  Created by Dmitry Shcherbakov on 24.10.2020.
//

import UIKit

class WelcomeUserViewController: UIViewController {

    @IBOutlet var welcomeUserLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let userName = userName {
            welcomeUserLabel.text = "Добро пожаловать, \(userName)!\n🥳"
        }
    }
}
