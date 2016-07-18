//
//  User.swift
//  app
//
//  Created by Nick Pelland on 4/13/16.
//  Copyright © 2016 adamshurson. All rights reserved.
//

import Foundation


public class User {
    
    let name: String?
    let pass: String?
    let university: String?
    let pic: NSURL?
    
    init(name: String, pass: String, unviserity: String, pic: String) {
        self.name = name
        self.pass = pass
        self.university = unviserity
        self.pic = NSURL(string: pic)
    }
    
}