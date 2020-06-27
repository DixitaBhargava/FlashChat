//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//   Created by Dixita Bhargava on 18/06/2020.
//  Copyright © 2020 Dixita Bhargava. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error{
                    print(e.localizedDescription)
                }else{
                    //navigate to chat view controller
                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }
        
    }
    
}
