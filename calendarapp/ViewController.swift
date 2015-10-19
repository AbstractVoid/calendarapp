//
//  ViewController.swift
//  calendarapp
//
//  Created by Nick on 10/14/15.
//  Copyright © 2015 Nick. All rights reserved.
//


var dayTest = Day()


import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        
        //let(displayEvent) = Sunday.Events[indexPath.row]
        
        cell.textLabel!.text = "Hello"
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

