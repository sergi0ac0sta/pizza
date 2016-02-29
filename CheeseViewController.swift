//
//  CheeseViewController.swift
//  Pizza
//
//  Created by Sergio Acosta on 26/02/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import UIKit

class CheeseViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var data = Data()
    var pizza: Pizza = Pizza()
    
    @IBOutlet weak var cheesePickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cheesePickerView.dataSource = self
        self.cheesePickerView.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        if let cheese = pizza.cheese {
            let row = data.cheese.indexOf(cheese)
            self.cheesePickerView.selectRow(row!, inComponent: 0, animated: false)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! ToppingsViewController
        nextView.pizza = pizza
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.cheese.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pizza.cheese = data.cheese[row]
        return data.cheese[row]
    }
}