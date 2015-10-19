//
//  Day.swift
//  calendarapp
//
//  Created by Nick on 10/19/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import Foundation
import CoreData


class Day: NSObject{
    
     var Events: [Event] = []
    
    

    
    func sort(var toSort: [Event]){
     toSort.sortInPlace({ $0.start!.compare($1.start!) == NSComparisonResult.OrderedAscending })
    }
}


