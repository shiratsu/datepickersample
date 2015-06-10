//
//  ViewController.swift
//  datepickersample
//
//  Created by HIRATSUKA SHUNSUKE on 2015/06/11.
//  Copyright (c) 2015年 HIRATSUKA SHUNSUKE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var first_text: UITextField!
    @IBOutlet weak var second_text: UITextField!
    
    
    lazy var dateFormatter: NSDateFormatter = {
        let dateFormatter = NSDateFormatter()
        
        
        dateFormatter.dateFormat = "HH:mm"
        
        return dateFormatter
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let datepicker = UIDatePicker()
        datepicker.datePickerMode = UIDatePickerMode.Time
        first_text.inputView = datepicker
        
        datepicker.addTarget(self, action: "updateFirst:", forControlEvents: UIControlEvents.ValueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func updateFirst(sender:AnyObject?){
        var dateSelecter: UIDatePicker = sender as! UIDatePicker
        let datestr = dateFormatter.stringFromDate(dateSelecter.date);
        println(datestr);//Oct 23, 2014, 7:58 PMな風に出力されます。
        first_text.text = datestr
    }

    
}

