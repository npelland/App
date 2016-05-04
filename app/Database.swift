//
//  Database.swift
//  app
//
//  Created by Nick Pelland on 4/13/16.
//  Copyright © 2016 adamshurson. All rights reserved.
//

import Foundation


public class Database {
    
    public func getData() -> Array<Post> {
        updateData()
        var newData = Array<Post>()
        for post in tempDatabase {
            let user = User(name: post[0], picURLString: post[1])
            let newPost = Post(author: user, title: post[2], text: post[3])
            
            newData.append(newPost)
        }
        
        return newData
    }
    
    func count() -> Int {
        return tempDatabase.count
    }
    
    func oldDataCount() -> Int {
        return 1
    }
    
    func getPost(index: Int) -> Post {
        return getData()[index]
    }
    
    //This is what will need to be replaced with SQl stuff
    var tempDatabase = Array<Array<String>>()
    
    func updateData() {
        tempDatabase = [["Nick", "https://www.petfinder.com/wp-content/uploads/2013/09/cat-black-superstitious-fcs-cat-myths-162286659.jpg", "Testing", "The quick brown fox jumps over the lazy dog"],
                        ["Adam", "https://upload.wikimedia.org/wikipedia/commons/1/1e/Large_Siamese_cat_tosses_a_mouse.jpg", "Im Black", "8=====>"],
                        ["Grant", "https://monkeysinmybag.files.wordpress.com/2012/05/ugly-guy.jpg?w=300","Goal", "Not I just need to get this info from an actual database"],
                        ["Nick", "https://i.ytimg.com/vi/fdMFwlNAv1U/maxresdefault.jpg", "TODO", "I still need to make this pretty, but getting the actua;l content to work is awesome!"],
                        ["Anonamos", "https://i.ytimg.com/vi/UfgNuUwRyPk/maxresdefault.jpg",  "Please Help", "Adam has a boner..."],
                        ["Nick", "https://averageguys.files.wordpress.com/2009/07/1241718622073.jpg", "<-- ANY PIC", "We can put ANY pic from the internet now:)"]
                        
        ]
    }
    
}


