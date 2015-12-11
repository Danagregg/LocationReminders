//
//  AddViewController.swift
//  Location Reminders
//
//  Created by Dana Gregg on 12/10/15.
//  Copyright © 2015 Dana Gregg. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var reminderText: UITextField!
    
    @IBOutlet weak var locationText: UITextField!
    
    func addReminder() {
        let event = reminderText!.text
        let location = locationText!.text
        
        let reminder = Reminder(event: event!, location: location!)
        //reminders.add(reminder)
    }

}
