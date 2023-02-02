//
//  MainRouter.swift
//  TransitionsPractice
//
//  Created by Dmitry Samusenko on 01.02.2023.
//

import UIKit

protocol MainRouter {
    func showDemo(fromViewController: UIViewController, with: Bool)
    func showLogin(fromViewController: UIViewController, authData: AuthData)
    func showTerms(fromViewController: UIViewController, with: String)
}

extension Router: MainRouter {
    func showDemo(fromViewController: UIViewController, with: Bool) {
        let storyboard = UIStoryboard(name: "SettingsViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        fromViewController.present(vc, animated: true)
    }
    
    func showLogin(fromViewController: UIViewController, authData: AuthData) {
        let storyboard = UIStoryboard(name: "LoginViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        vc.configure(with: authData)
        fromViewController.navigationController?.pushViewController(vc, animated: true)
    }
    
    func showTerms(fromViewController: UIViewController, with: String) {
        let storyboard = UIStoryboard(name: "TermsViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TermsViewController") as! TermsViewController
        vc.configure(with: with)
        fromViewController.navigationController?.pushViewController(vc, animated: true)
    }
}
