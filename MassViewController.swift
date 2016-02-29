//
//  MassViewController.swift
//  Pizza
//
//  Created by Sergio Acosta on 26/02/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import UIKit

class MassViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var data = Data()
    var pizza: Pizza = Pizza()
    
    @IBOutlet weak var massPickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.massPickerView.dataSource = self
        self.massPickerView.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        if let mass = pizza.mass {
            let row = data.mass.indexOf(mass)
            self.massPickerView.selectRow(row!, inComponent: 0, animated: false)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! CheeseViewController
        nextView.pizza = pizza
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.mass.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pizza.mass = data.mass[row]
        return data.mass[row]
    }
}
