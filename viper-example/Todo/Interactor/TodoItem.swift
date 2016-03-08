//
// Created by Duc Nguyen
// Copyright (c) 2016 Duc Nguyen. All rights reserved.
//

import Foundation

struct TodoItem
{
    let dueDate : NSDate
    let name : String
    
    init(dueDate: NSDate, name: String) {
        self.dueDate = dueDate
        self.name = name
    }
}