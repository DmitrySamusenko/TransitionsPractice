//
//  DemoViewController.swift
//  TransitionsPractice
//
//  Created by Dmitry Samusenko on 01.02.2023.
//

import UIKit

class SettingsViewController: UIViewController {
    // Mark: - Outlets
    @IBOutlet private var statusLabel: UILabel!
    @IBOutlet private var giftCodeField: UITextField!
    @IBOutlet private var saveButton: UIButton!
    @IBOutlet private var segmentControl: UISegmentedControl!
    @IBOutlet private var deleteButton: UIButton!
    var statusLabelCountData: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        saveButton.addTarget(self, action: #selector(didTapSaveButton), for: .touchUpInside)
        deleteButton.addTarget(self, action: #selector(didTapDeleteButton), for: .touchUpInside)
        segmentControl.addTarget(self, action: #selector(didTapSegentControl), for: .valueChanged)
        saveCurrentLaunch()
        if let statusLabel = statusLabel.text {
            statusLabelCountData = statusLabel + "\(UserDefaults.standard.integer(forKey: numberOfLaunchesKey))"
        }
        statusLabel.text = statusLabelCountData
        giftCodeField.text = UserDefaults.standard.string(forKey: giftCodeText)
        segmentControl.selectedSegmentIndex = UserDefaults.standard.integer(forKey: segmentIndex)
    }
    
    // Mark: - Actions
    @objc func didTapSaveButton() {
        guard let text = giftCodeField.text else { return }
        UserDefaults.standard.set(text, forKey: giftCodeText)
        print("Save!")
    }
    
    @objc func didTapDeleteButton() {
        let keys = [numberOfLaunchesKey, giftCodeText, segmentIndex]
        keys.forEach {
            UserDefaults.standard.set(nil, forKey: $0)
        }
        
        print("Delete!")
    }
    
    @objc func didTapSegentControl(sender: UISegmentedControl) {
        UserDefaults.standard.set(sender.selectedSegmentIndex, forKey: segmentIndex)
    }
    
    func saveCurrentLaunch() {
        let index = UserDefaults.standard.integer(forKey: numberOfLaunchesKey)
        UserDefaults.standard.set(index + 1, forKey: numberOfLaunchesKey)

    }
    // Mark: - Private
    private let numberOfLaunchesKey = "NuberOfLaunches"
    private let giftCodeText = "GiftCodeText"
    private let segmentIndex = "SegmentIndex"
}
