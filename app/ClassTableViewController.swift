//
//  ClassTableViewController.swift
//  app
//
//  Created by Nick Pelland on 4/14/16.
//  Copyright © 2016 adamshurson. All rights reserved.
//

import UIKit

class ClassTableViewController: UITableViewController {

    var posts = Database()
    
    
    override func viewDidLoad() {
        update()
    }
    
    
    
    
    private func update() {
        posts.getData()
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        <#code#>
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
}
