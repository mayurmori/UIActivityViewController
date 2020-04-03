//
//  Second_VC.swift
//  UIActivityViewController
//
//  Created by Mayur Mori on 10/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

class Second_VC: UIViewController {

    // MARK: - IBOUTLET -
    @IBOutlet weak var imgView: UIImageView!
    
    // MARK: - VIEW LIFE CYCLE METHODS -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    // MARK: - FUNCTIONS -
    private func setupUI() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(shareImage))
        
        let image = UIImage(named:"imac.jpg")
        self.imgView.image = image
    }
    
    // MARK: - IB ACTIONS -
    @objc func shareImage() {
        let vc = UIActivityViewController(activityItems: [imgView.image!], applicationActivities: [])
        present(vc, animated: true)
    }
    
    @IBAction func btnShare_Clicked(_ sender: UIButton) {
        let image = self.imgView.image!
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        controller.excludedActivityTypes = [.postToFacebook, .postToTwitter, .print, .copyToPasteboard, .assignToContact, .saveToCameraRoll, .mail]
        self.present(controller, animated: true, completion: nil)
    }
}
