//
//  ViewController.swift
//  CalendarDemo
//
//  Created by Abhi's Mac on 31/01/18.
//  Copyright © 2018 Abhi's Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    var datePicker : UIDatePicker!
    var inputView1 = UIView()
    
    @IBOutlet weak var txtDate: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtDate.delegate = self
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("Edititng")
        let currentDate = NSDate()
        
        var components = DateComponents()
        var components2 = DateComponents()
        
        components.year = -1
        let minDate = Calendar.current.date(byAdding: components, to: Date())
        
        components2.year = 0
        let maxDate = Calendar.current.date(byAdding: components2, to: Date())
        
        DatePickerDaialog().show(title: "PickDate", doneButtonTitle: "Done", cancelButtonTitle: "Cancel", defaultDate: currentDate, minimumDate: minDate, maximumDate: maxDate, datePickerMode: .date) { (dateResult) in
            
            if dateResult != nil{
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy/MM/dd"
                let date = dateFormatter.string(from: dateResult! as Date)
                print(date)
                self.txtDate.text = date
            }
            
        }
    }
    
    @IBAction func buttonCustom(_ sender: Any) {
        
        let currentDate = NSDate()
        
        var components = DateComponents()
        var components2 = DateComponents()
        
        components.year = -1
        let minDate = Calendar.current.date(byAdding: components, to: Date())
        
        components2.year = 0
        let maxDate = Calendar.current.date(byAdding: components2, to: Date())
        
        DatePickerDaialog().show(title: "PickDate", doneButtonTitle: "Done", cancelButtonTitle: "Cancel", defaultDate: currentDate, minimumDate: minDate, maximumDate: maxDate, datePickerMode: .date) { (dateResult) in
            
            if dateResult != nil{
                let dateFormatter = DateFormatter()
                dateFormatter.dateFormat = "yyyy/MM/dd"
                let date = dateFormatter.string(from: dateResult! as Date)
                print(date)
            }
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
