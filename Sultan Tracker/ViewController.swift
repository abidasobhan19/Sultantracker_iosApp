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



class ViewController: UIViewController {
    
  
    @IBOutlet weak var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        print("view loaded")
        super.viewDidLoad()
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
    
   
    
   
    
 
   
    
}

