//
//  ViewController.swift
//  UIActivityViewController
//
//  Created by Mayur Mori on 10/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOUTLET -
    @IBOutlet weak var txtField: UITextField!
    
    // MARK: - VIEW LIFE CYCLE METHODS -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    // MARK: - FUNCTIONS -
    private func setupUI() {
        self.txtField.delegate = self
    }
    
    // MARK: - IB ACTIONS -
    @IBAction func btnShare_Clicked(_ sender: UIButton) {
        let activityViewController = UIActivityViewController(activityItems: [txtField.text as Any], applicationActivities: nil)
        present(activityViewController, animated: true, completion: nil)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
