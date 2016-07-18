//
//  Database.swift
//  app
//
//  Created by Nick Pelland on 4/13/16.
//  Copyright © 2016 adamshurson. All rights reserved.
//

import Foundation


public class Database {
    
    
    public func login(user: User) -> User? {
        let thisUser = user.name!
        let thisPass = user.pass!
        let url = "http://192.168.1.8/phpmyadmin/service.php?user=\(thisUser)&pass=\(thisPass)"
        do {
            let text = try String(contentsOfURL: NSURL(string: url)!)
            let dic = JSONParseDictionary(text)
            print (dic)
            if (dic.count != 0) {
                let name = dic["Username"] as? String
                let pass = dic["Password"] as? String
                let univ = dic["University"] as? String
                let pic = dic["Picture"] as? String
                if (thisPass == pass) {
                    let user = User(name: name!, pass: pass!, unviserity: univ!, pic: pic!)
                    return user
                } else {
                    return nil
                }
            } else {
                return nil
            }
        } catch let error as NSError {
            print(error.localizedDescription)
            return nil;
        }
    }
    
    //probably can combine with function above
    public func doesUserExist(user: User) -> Bool {
        let thisName = user.name!
        let url = "http://192.168.1.8/phpmyadmin/service.php?user=\(thisName)"
        do {
            let text = try String(contentsOfURL: NSURL(string: url)!)
            let dic = JSONParseDictionary(text)
            print (dic)
            if (dic.count != 0) {
                return true
            } else {
                return false
            }
        } catch let error as NSError {
            print(error.localizedDescription)
            return false;
        }
        
    }
    
    
    public func createUser(user: User) {
        let thisUser = user.name!
        let thisPass = user.pass!
        let thisUnivFull = user.university!
        let thisUniv = thisUnivFull.stringByReplacingOccurrencesOfString(" ", withString: "_")
        let thisPic = String(user.pic!)
        let url = "http://192.168.1.8/phpmyadmin/service.php?user=\(thisUser)&pass=\(thisPass)&univ=\(thisUniv)&pic=\(thisPic)&create=1"
        print (url)
        do {
            let text = try String(contentsOfURL: NSURL(string: url)!)
            print (text)
        } catch let error as NSError {
            print(error.localizedDescription)
        }
    }
    
    
    func JSONParseDictionary(string: String) -> [String: AnyObject]{
        
        var newString = string.stringByReplacingOccurrencesOfString("]", withString: "")
        newString = newString.stringByReplacingOccurrencesOfString("[", withString: "")
        print (string)
        if let data = newString.dataUsingEncoding(NSUTF8StringEncoding){
    
            do{
                if let dictionary = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers) as? [String: AnyObject]{
                    print (dictionary)
                    return dictionary
                    
                }
            }catch {
                
                print("error")
            }
        }
        return [String: AnyObject]()
    }

    
}



