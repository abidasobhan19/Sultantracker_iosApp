//
//  singInViewController.swift
//  Sultan Tracker
//
//  Created by ABid A.Sobhan on 8/9/20.
//  Copyright © 2020 ABid A.Sobhan. All rights reserved.
//

import UIKit
import Alamofire
import  Firebase

class singInViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var txtUId: UITextField!
    @IBOutlet weak var txttitle: UITextField!
    @IBOutlet weak var txtbody: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        txtbody.delegate = self
        // Do any additional setup after loading the view.
        
     
        if Auth.auth().currentUser != nil {
            print("currentUser")
            let user = Auth.auth().currentUser
            if let user = user {
                let uid = user.uid
                let email = user.email
                let photoURL = user.photoURL
                
            }
            
            print(user?.uid)
            print(user?.email)
            print(user?.displayName)
            print(user?.photoURL)
            print(user?.phoneNumber)
//
//            let parameters: [String : Any] = [
//
//                "email": user?.email,
//
//
//                ]
//
//            Alamofire.request("https://sultantracker.com/api/api/users", method: .post, parameters: parameters, encoding: JSONEncoding.default)
//                .responseJSON { response in
//                    print(response)
//
//
//            }
        }
        
        
        
        

    }

    
    
    @IBAction func btnlogout(_ sender: Any) {
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
        } catch let signOutError as NSError {
            print ("Error signing out: %@", signOutError)
        }
        
    }
    

    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtbody.resignFirstResponder()
        return true
    }
    
    
    
    
   
    
    
    
}

