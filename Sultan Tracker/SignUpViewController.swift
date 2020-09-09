//
//  SignUpViewController.swift
//  Sultan Tracker
//
//  Created by ABid A.Sobhan on 7/9/20.
//  Copyright © 2020 ABid A.Sobhan. All rights reserved.
//

import UIKit
import Firebase

class SignUpViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtpassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        txtpassword.delegate = self
        txtEmail.becomeFirstResponder()
    }

    @IBAction func GSignUp(_ sender: Any) {
        
        
        createuser(email: txtEmail.text!, password:txtpassword.text!)
      
        
        
    
        }
        
    func createuser(email:String , password:String) {
        
        Auth.auth().createUser(withEmail: email, password: password) { (User, error) in
            if User != nil {
                print("user created")
                self.dismiss(animated: true)
            }
        }
        }
  
            // ...
        }
        


    



