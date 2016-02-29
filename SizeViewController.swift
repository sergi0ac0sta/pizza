//
//  SizeViewController.swift
//  Pizza
//
//  Created by Sergio Acosta on 26/02/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import UIKit

class SizeViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    let data = Data()
    var pizza: Pizza = Pizza()
    
    @IBOutlet weak var sizePickerView: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sizePickerView.dataSource = self
        self.sizePickerView.delegate = self
    }
    
    override func viewWillAppear(animated: Bool) {
        if let size = pizza.size {
            let row = data.size.indexOf(size)
            self.sizePickerView.selectRow(row!, inComponent: 0, animated: false)
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! MassViewController
        nextView.pizza = pizza
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.size.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        pizza.size = data.size[row]
        return data.size[row]
    }
}
