//
//  ViewController2.swift
//  calendarapp
//
//  Created by Nick on 10/17/15.
//  Copyright © 2015 Nick. All rights reserved.
//



import UIKit
class ViewController2: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var EventTitle: UITextField!
    @IBOutlet weak var TimePick: UIDatePicker!
    @IBOutlet weak var PickDay: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.PickDay.delegate = self
        self.PickDay.dataSource = self
        
        
        pickerData = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
        
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return pickerData.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    func getIntDayEquiv (day: String? )->Int{
        if(day=="Sunday"){
            return 1
        }
        else if(day == "Monday"){
            return 2
        } else if(day == "Tuesday"){
            return 3
        } else if(day == "Wednesday"){
            return 4
        } else if(day == "Thursday"){
            return 5
        } else if(day == "Friday"){
            return 6
        } else {
            return 7
        }
    }
    
    @IBAction func Submit(sender: AnyObject) {
        
        let newEvent = Event()
        newEvent.title = EventTitle.text!
        newEvent.day = PickDay.delegate?.pickerView!(PickDay, titleForRow: PickDay.selectedRowInComponent(0), forComponent: 0)
        newEvent.dayNum = getIntDayEquiv(newEvent.day)
        newEvent.start = TimePick.date
        print(newEvent.day)
        //newEvent.start = timeFormatter.stringFromDate(TimePick.date)
        dayTest.Events.append(newEvent)
        dayTest.Events.sortInPlace { $0.start!.compare($1.start!) == .OrderedAscending }
        dayTest.Events.sortInPlace { $0.dayNum! < ($1.dayNum!) }
        
        
        
        
        
        
    }
    
    
}
