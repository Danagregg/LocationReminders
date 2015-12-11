//
//  ReminderTableViewController.swift
//  Location Reminders
//
//  Created by Dana Gregg on 12/10/15.
//  Copyright © 2015 Dana Gregg. All rights reserved.
//

import UIKit

class ReminderTableViewController: UITableViewController {

    var reminders:[Reminder] = []
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count
    }
    
    private struct Storyboard {
        static let CellReuseIdentifier = "Reminder"
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Storyboard.CellReuseIdentifier, forIndexPath: indexPath) as! ReminderTableViewCell
        
        cell.reminder = reminders[indexPath.row]
        
        return cell
    }

    @IBAction func addReminder(sender: UIBarButtonItem) {
        self.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        self.modalPresentationStyle = .CurrentContext
        self.presentViewController(AddViewController(), animated: true, completion: nil)
    }

}

