//
//  HomeTableViewCell.swift
//  app
//
//  Created by Nick Pelland on 4/6/16.
//  Copyright © 2016 adamshurson. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var author: UILabel!
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var courseName: UILabel!

    NSMutableURLRequest

    var post: Post? {
        didSet {
            updateUI()
        }
    }
    
    
    func updateUI() {
        postTitle.text = nil
        author.text = nil
        profilePic.image = nil
        courseName.text = nil
        
        //Not set up exact at the moment
        if let data = self.post {
            postTitle.text = data.text
            author.text = data.title
            courseName.text = data.author.name
            if let imageData = NSData(contentsOfURL: data.author.pic!) {
                profilePic?.image = UIImage(data: imageData)
            }
        }
        
    }
    
    
}
