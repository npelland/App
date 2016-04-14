//
//  Post.swift
//  app
//
//  Created by Nick Pelland on 4/6/16.
//  Copyright © 2016 adamshurson. All rights reserved.
//

import Foundation

public class Post {
    
    let text: String?
    let title: String?
    let author: User!
    
    init(author: User, title: String, text: String) {
        self.text = text
        self.title = title
        self.author = author
    }
}