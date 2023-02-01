//
//  DemoViewController.swift
//  TransitionsPractice
//
//  Created by Dmitry Samusenko on 01.02.2023.
//

import UIKit

class DemoViewController: UIViewController {
    // Mark: - Public
    func configure(with shouldDisissAnimated: Bool) {
        self.shouldDisissAnimated = shouldDisissAnimated
    }
    
    // Mark: - Actions
    @IBAction func dismissTap() {
        dismiss(animated: shouldDisissAnimated)
    }
    // Mark: - Private
    private var shouldDisissAnimated = true
}
