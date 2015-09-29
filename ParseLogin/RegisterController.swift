//
//  RegisterController.swift
//  ParseLogin
//
//  Created by Kevin Wong on 2015-09-22.
//  Copyright (c) 2015 Kevin Wong. All rights reserved.
//

import UIKit
import Parse

class RegisterController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var emailTextField: UITextField!
    
    @IBAction func signUpAction(sender: AnyObject) {
        
        SignUp()
        userNameTextField.text = ""
        passwordTextField.text = ""
        emailTextField.text = ""
    }
    
    func SignUp(){
        var user = PFUser()
        user.username = userNameTextField.text!
        user.password = passwordTextField.text!
        user.email = emailTextField.text!
        
        user.signUpInBackgroundWithBlock{(success: Bool, error: NSError?) -> Void in
            if error == nil {
                // Good
            }else {
                // Error
            }
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

