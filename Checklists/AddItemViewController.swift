//
//  AddItemViewController.swift
//  Checklists
//
//  Created by junhyungjin on 2016. 1. 28..
//  Copyright © 2016년 Jsoft. All rights reserved.
//

import Foundation
import UIKit

class AddItemViewController: UITableViewController {
    @IBAction func cancel() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func done() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func tableView(tableView: UITableView, willSelectRowAtIndexPath indexPath: NSIndexPath) -> NSIndexPath? {
        return nil
    }

}
