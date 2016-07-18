//
//  LoginViewController.swift
//  app
//
//  Created by Nick Pelland on 7/17/16.
//  Copyright © 2016 adamshurson. All rights reserved.
//

import UIKit
var globalUser: User = User(name: "", pass: "", unviserity: "", pic: "")


class LoginViewController: UIViewController {
    
    var data = Database()

    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    
    @IBOutlet weak var createUser: UITextField!
    @IBOutlet weak var createPass: UITextField!
    @IBOutlet weak var createUniversity: UITextField!
    @IBOutlet weak var createImageURL: UITextField!
    
    @IBAction func loginButton(sender: UIButton) {
        if (usernameField.text != "") && (passwordField.text != "") {
            let user = User(name: usernameField.text!, pass: passwordField.text!, unviserity: "", pic: "")
            if let userTest = data.login(user) {
                globalUser = userTest
                performSegueWithIdentifier("loginCorrect", sender: nil)
            } else {
                sendAlert("User does not exist", message: "")
            }
        } else {
            sendAlert("Please input both username and password", message: "")
        }
    }
    
    @IBAction func createAccountButton(sender: UIButton) {
        if (createUser.text != "") && (createPass.text != "") && (createUniversity.text != "") && (createImageURL.text != "") {
            let user = User(name: createUser.text!, pass: createPass.text!, unviserity: createUniversity.text!, pic: createImageURL.text!)
            if (data.doesUserExist(user) == false) {
                data.createUser(user)
                globalUser = user
                performSegueWithIdentifier("newAccount", sender: nil)
            } else {
                sendAlert("This username already exists", message: "")
            }
            
        } else {
            sendAlert("Please fill in all of the fields", message: "")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //Looks for single or multiple taps.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func sendAlert(tile: String, message: String) {
        let alert = UIAlertController(title: tile, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    
    //Calls this function when the tap is recognized.
    func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(false)
    }
    
    
}
