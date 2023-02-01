//
//  LoginViewController.swift
//  TransitionsPractice
//
//  Created by Dmitry Samusenko on 01.02.2023.
//

import UIKit

class LoginViewController: UIViewController {

    // Mark: - Outlets
    @IBOutlet private var lgnField: UITextField!
    @IBOutlet private var pwField: UITextField!
    
    // Mark: - Public
    func configure(with authData: AuthData) {
        defaultLogin = authData.login
        defaultPW = authData.password
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lgnField.text = defaultLogin
        pwField.text = defaultPW
    }
    
    // Mark: - Private
    private var defaultLogin: String = ""
    private var defaultPW: String = ""
}
