//
//  ViewController.swift
//  TransitionsPractice
//
//  Created by Dmitry Samusenko on 01.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // MARK: - Actions
    @IBAction func didTapLoginButton() {
        let storyboard = UIStoryboard(name: "LoginViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func didTapDemoButton() {
        let storyboard = UIStoryboard(name: "DemoViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DemoViewController") as! DemoViewController
        present(vc, animated: true)
        
        
    }
    @IBAction func didTapTermsButton() {
        let storyboard = UIStoryboard(name: "TermsViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TermsViewController") as! TermsViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
}

