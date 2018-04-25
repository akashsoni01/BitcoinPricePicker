//
//  ViewController.swift
//  BitcoinPricePicker
//
//  Created by admin on 4/25/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    var region = ["africa","asia","europe"]
    var currency = [
        ["Africa USD","Rupee","yeen","rokda","mathi","ghasi"],
        ["asia USD","Rupee","yeen","rokda","mathi","ghasi"],
        ["europe USD","Rupee","yeen","rokda","mathi","ghasi"]
    ]

    @IBOutlet weak var moneyUnit: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        moneyUnit.dataSource = self
        moneyUnit.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return currency.count
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return currency[component].count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return currency[component][row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(currency[component][row])
    }

}

