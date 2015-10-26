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
    
    var timeFormatter = NSDateFormatter()
    
    
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dayTest.Events.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        timeFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        // Contents
        cell.textLabel?.text = dayTest.Events[indexPath.row].title
        // description
        cell.detailTextLabel?.text = dayTest.Events[indexPath.row].day! + " " +  timeFormatter.stringFromDate(dayTest.Events[indexPath.row].start!)
        return cell
    }
    
    // Slide to delete a cell
    
    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if (editingStyle == UITableViewCellEditingStyle.Delete) {
            dayTest.Events.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
        }
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

