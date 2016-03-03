//
//  MassInterfaceController.swift
//  Pizza
//
//  Created by Sergio Acosta on 01/03/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import WatchKit
import Foundation


class MassInterfaceController: WKInterfaceController {
    let data: Data = Data()
    var pizza: Pizza = Pizza()
    var pickerItems: [WKPickerItem] = []

    @IBOutlet var massPicker: WKInterfacePicker!
    
    @IBAction func selectMass(value: Int) {
        pizza.mass = pickerItems[value].title
    }
    
    @IBAction func nextView() {
        pushControllerWithName("pizzaWithMass", context: pizza)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        
        for mass in data.mass {
            let item: WKPickerItem = WKPickerItem()
            item.caption = mass
            item.title = mass
            pickerItems.append(item)
        }
        massPicker.setItems(pickerItems)
    }

    override func willActivate() {
        super.willActivate()
        if let mass = pizza.mass {
            let row = data.mass.indexOf(mass)
            massPicker.setSelectedItemIndex(row!)
        } else {
            selectMass(0)
        }
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
}
