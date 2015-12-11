//
//  ReminderTableViewCell.swift
//  Location Reminders
//
//  Created by Dana Gregg on 12/10/15.
//  Copyright © 2015 Dana Gregg. All rights reserved.
//

import Foundation
import UIKit

class ReminderTableViewCell: UITableViewCell {
    var reminder: Reminder? {
        didSet {
            updateUI()
        }
    }
    
    @IBOutlet weak var reminderText: UILabel!
    @IBOutlet weak var reminderLocation: UILabel!
    
    func updateUI(){
        reminderText?.text = nil
        reminderLocation?.text = nil
        
        if let reminder = self.reminder {
            reminderText?.text = reminder.event
            reminderLocation?.text = reminder.location
        }
    }
    
}