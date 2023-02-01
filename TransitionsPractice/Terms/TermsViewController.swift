//
//  TermsViewController.swift
//  TransitionsPractice
//
//  Created by Dmitry Samusenko on 01.02.2023.
//

import UIKit

class TermsViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet private var agreementTitleLabel: UILabel!
    // MARK: - Public
    func configure(with agreementLanguage: String) {
        self.agreementLanguage = agreementLanguage
    }
    // MARK: - Private
    private var agreementLanguage: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let defaultLabel = agreementTitleLabel.text {
            let newTitle = defaultLabel + " - " + agreementLanguage
            agreementTitleLabel.text = newTitle
        }
    }
}
