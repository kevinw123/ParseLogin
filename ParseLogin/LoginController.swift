//
//  LoginController.swift
//  ParseLogin
//
//  Created by Kevin Wong on 2015-09-22.
//  Copyright (c) 2015 Kevin Wong. All rights reserved.
//

import UIKit
import Parse

class LoginController: UIViewController {

    @IBOutlet var userNameLogin: UITextField!
    @IBOutlet var passwordLogin: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginAction(sender: AnyObject) {
        
        Login()
    }
    
    func Login(){
        
        var user = PFUser()
        user.username = userNameLogin.text!
        user.password = passwordLogin.text!
        
        PFUser.logInWithUsernameInBackground(userNameLogin.text, password: passwordLogin.text, block: {
            (User : PFUser?, Error : NSError?) -> Void in
            
        if Error == nil{
                dispatch_async(dispatch_get_main_queue()){
                    var storyBoard = UIStoryboard(name:"Main", bundle: nil)
                    var SuccessViewController : UIViewController = storyBoard.instantiateViewControllerWithIdentifier("SuccessViewController") as UIViewController
                    
                    self.presentViewController(SuccessViewController, animated: true, completion: nil)
                }
            }
        else{
            NSLog("Wrong Login");
        }
            
            
            
        })
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
