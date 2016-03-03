//
//  SizeInterfaceController.swift
//  Pizza
//
//  Created by Sergio Acosta on 01/03/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import WatchKit
import Foundation


class SizeInterfaceController: WKInterfaceController {
    let data: Data = Data()
    var pizza: Pizza = Pizza()
    var pickerItems: [WKPickerItem] = []
    
    @IBOutlet var sizePicker: WKInterfacePicker!

    @IBAction func selectSize(value: Int) {
        pizza.size = pickerItems[value].title
    }
    
    @IBAction func nextView() {
        pushControllerWithName("pizzaWithSize", context: pizza)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza

        for size in data.size {
            let item: WKPickerItem = WKPickerItem()
            item.caption = size
            item.title = size
            pickerItems.append(item)
        }
        sizePicker.setItems(pickerItems)
    }

    override func willActivate() {
        super.willActivate()
        if let size = pizza.size {
            let row = data.size.indexOf(size)
            sizePicker.setSelectedItemIndex(row!)
        } else {
            selectSize(0)
        }
    }

    override func didDeactivate() {
        super.didDeactivate()
    }
}
