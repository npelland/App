//
//  ProfileViewController.swift
//  app
//
//  Created by Nick Pelland on 7/17/16.
//  Copyright © 2016 adamshurson. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        username.text = globalUser.name!
        if let profilePicURL = globalUser.pic as NSURL! {
            let imageData = NSData(contentsOfURL: profilePicURL)
            profilePic.image = UIImage(data: imageData!)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func logoutButton(sender: UIButton) {
        globalUser = User(name: "", pass: "", unviserity: "", pic: "")
    }

    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
