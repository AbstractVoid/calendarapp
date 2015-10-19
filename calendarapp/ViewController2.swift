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
    
    @IBAction func Submit(sender: AnyObject) {
        let newEvent = Event()
        newEvent.title = EventTitle.text!
        newEvent.day = PickDay.description
        newEvent.start = TimePick.date
        dayTest.Events.append(newEvent)
        print(dayTest.Events[0].title)
        
        
        
    }
    
    
}
