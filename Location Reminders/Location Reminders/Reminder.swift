//
//  Reminder.swift
//  Location Reminders
//
//  Created by Dana Gregg on 12/10/15.
//  Copyright © 2015 Dana Gregg. All rights reserved.
//

import Foundation

class Reminder {
    
    var event: String
    var location: String

    init (event: String, location: String) {
        self.event = event
        self.location = location
    }
    
}