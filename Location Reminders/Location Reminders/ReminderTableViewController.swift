//
//  ReminderTableViewController.swift
//  Location Reminders
//
//  Created by Dana Gregg on 12/10/15.
//  Copyright © 2015 Dana Gregg. All rights reserved.
//

import UIKit

class ReminderTableViewController: UITableViewController, AddViewControllerDelegate {

    var reminders:[Reminder] = [Reminder]()
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reminders.count
    }
    
    private struct Storyboard {
        static let CellReuseIdentifier = "Reminder"
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let reminder1 = Reminder(event: "hello", location: "goodbye")
        reminders.append(reminder1)
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(Storyboard.CellReuseIdentifier, forIndexPath: indexPath) as! ReminderTableViewCell
        
        cell.reminder = reminders[indexPath.row]
        cell.reminderText!.text = reminders[indexPath.row].event
        cell.reminderLocation!.text = reminders[indexPath.row].location
        
        return cell
    }
    
    func addViewDidFinish(controller: AddViewController, event: String, location: String) {
        let reminder = Reminder(event: event, location: location)
        reminders.append(reminder)
        updateUI()
    }
    
    func updateUI() {
        self.tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addReminder" {
            let avc = segue.destinationViewController as! AddViewController
            avc.delegate = self
        }
    }

    @IBAction func addReminder(sender: UIBarButtonItem) {
        self.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        self.modalPresentationStyle = .CurrentContext
        self.presentViewController(AddViewController(), animated: true, completion: nil)
    }

}

