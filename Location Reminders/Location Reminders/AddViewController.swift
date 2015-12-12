//
//  AddViewController.swift
//  Location Reminders
//
//  Created by Dana Gregg on 12/10/15.
//  Copyright © 2015 Dana Gregg. All rights reserved.
//

import UIKit

protocol AddViewControllerDelegate {
    func addViewDidFinish(controller: AddViewController, event: String, location: String)
}

class AddViewController: UIViewController {
    
    var delegate:AddViewControllerDelegate! = nil

    @IBOutlet weak var reminderText: UITextField!
    
    @IBOutlet weak var locationText: UITextField!
    
    @IBAction func done(sender: UIButton) {
        let event = reminderText!.text
        let location = locationText!.text
        
        delegate!.addViewDidFinish(self, event: event!, location: location!)
    }

}
