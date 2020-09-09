//
//  ViewController.swift
//  Sultan Tracker
//
//  Created by ABid A.Sobhan on 6/9/20.
//  Copyright © 2020 ABid A.Sobhan. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase
import Alamofire



class ViewController: UIViewController ,UITextFieldDelegate{
    
  
    
    @IBOutlet weak var txtemail: UITextField!
    
    @IBOutlet weak var txtpassword: UITextField!
    
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        print("view loaded")
        super.viewDidLoad()
        
        
   txtpassword.delegate = self
        
        
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
        
        let gSignIn = GIDSignInButton(frame: CGRect(x: (view.frame.size.width-230)/2 , y: 350, width: 230, height: 48))
        

        view.addSubview(gSignIn)
        print(gSignIn)
       
     
        
        
        

    }
    
    
    
    @IBAction func SignUp(_ sender: Any) {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "SignUpViewController") as! SignUpViewController
        self.present(controller,animated: true)

        print("button pressed")
    }

    
    
    
    
    
    
    
    @IBAction func login(_ sender: Any) {
        
        login(email: txtemail.text!, password: txtpassword.text!)
        
    }
    
    
    
    
    func login(email:String, password:String){
        Auth.auth().signIn(withEmail: email, password: password) {  User , error in
            if error == nil{
               
                print("user signed in")
                let story = UIStoryboard(name: "Main", bundle: nil)
                let controller = story.instantiateViewController(withIdentifier: "singInViewController") as! singInViewController
                self.present(controller,animated: true)

            }else {(error?._code == AuthErrorCode.userNotFound.rawValue)
                    print(error)
                
            }
            // ...
        }
        
            
            }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtpassword.resignFirstResponder()
        return true
    }
        }

    
 
   
    


