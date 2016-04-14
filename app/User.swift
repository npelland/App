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
    let pic: NSURL?
    
    init(name: String, picURLString: String) {
        self.name = name
        self.pic = NSURL(string: picURLString)
    }
    
}