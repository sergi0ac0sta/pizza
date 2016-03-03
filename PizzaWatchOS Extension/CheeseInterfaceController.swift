//
//  CheeseInterfaceController.swift
//  Pizza
//
//  Created by Sergio Acosta on 01/03/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import WatchKit
import Foundation


class CheeseInterfaceController: WKInterfaceController {
    let data: Data = Data()
    var pizza: Pizza = Pizza()
    var pickerItems: [WKPickerItem] = []
    
    @IBOutlet var cheesePicker: WKInterfacePicker!
    
    @IBAction func selectCheese(value: Int) {
        pizza.cheese = pickerItems[value].title
    }
    
    @IBAction func nextView() {
        pushControllerWithName("pizzaWithCheese", context: pizza)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
        
        for cheese in data.cheese {
            let item: WKPickerItem = WKPickerItem()
            item.caption = cheese
            item.title = cheese
            pickerItems.append(item)
        }
        cheesePicker.setItems(pickerItems)
    }

    override func willActivate() {
        super.willActivate()
        if let cheese = pizza.cheese {
            let row = data.cheese.indexOf(cheese)
            cheesePicker.setSelectedItemIndex(row!)
        } else {
            selectCheese(0)
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
