//
//  ChecklistItem.swift
//  Checklists
//
//  Created by junhyungjin on 2016. 1. 21..
//  Copyright © 2016년 Jsoft. All rights reserved.
//

import Foundation

class ChecklistItem: NSObject {
    var text = ""
    var checked = false
    
    func toggleChecked() {
        checked = !checked
    }
}