//
//  CoursePostTableViewCell.swift
//  app
//
//  Created by Nick Pelland on 4/24/16.
//  Copyright © 2016 adamshurson. All rights reserved.
//

import UIKit

class CoursePostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profPic: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var PostContent: UILabel!
    @IBOutlet weak var postText: UITextView!
    
    var post: Post? {
        didSet {
            updateUI()
        }
    }
    
    
    
}
