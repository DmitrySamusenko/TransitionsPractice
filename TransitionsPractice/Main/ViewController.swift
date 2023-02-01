//
//  ViewController.swift
//  TransitionsPractice
//
//  Created by Dmitry Samusenko on 01.02.2023.
//

import UIKit

class ViewController: UIViewController {
    private let router = Router.shared
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Actions
    @IBAction func didTapLoginButton() {
        let authData = AuthData(login: "Demetrius", password: "password123")
        router.showLogin(fromViewController: self, authData: authData)
    }
    @IBAction func didTapDemoButton() {
        router.showDemo(fromViewController: self, with: true)
        
    }
    @IBAction func didTapTermsButton() {
        router.showTerms(fromViewController: self, with: "RU")
    }
    
}

