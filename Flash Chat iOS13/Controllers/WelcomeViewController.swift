//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//   Created by Dixita Bhargava on 18/06/2020.
//  Copyright © 2020 Dixita Bhargava. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = K.appName
//
//        titleLabel.text = ""
//        var charIndex = 0.0
//        let titleText = K.appName
//        for letter in titleText{
//            Timer.scheduledTimer(withTimeInterval: 0.2 * charIndex, repeats: false) { (timer) in
//                self.titleLabel.text?.append(letter)
//            }
//            charIndex += 1
//        }
        
    }
    
    
}
