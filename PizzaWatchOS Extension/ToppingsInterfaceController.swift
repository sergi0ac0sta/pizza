//
//  ToppingsInterfaceController.swift
//  Pizza
//
//  Created by Sergio Acosta on 01/03/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import WatchKit
import Foundation


class ToppingsInterfaceController: WKInterfaceController {
    let data: Data = Data()
    var pizza: Pizza = Pizza()
    
    @IBOutlet var toppingsTable: WKInterfaceTable!
    
    @IBAction func nextView() {
        pushControllerWithName("pizzaWithToppings", context: pizza)
    }
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
    }

    override func willActivate() {
        super.willActivate()
        tableRefresh()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }

    override func table(table: WKInterfaceTable, didSelectRowAtIndex rowIndex: Int) {
        let row = table.rowControllerAtIndex(rowIndex) as! ToppingsTableRowController
        
        if pizza.toppings.contains(data.toppings[rowIndex]) {
            pizza.toppings.removeAtIndex(pizza.toppings.indexOf(data.toppings[rowIndex])!)
            row.rowLabel.setTextColor(UIColor.whiteColor())
        } else if pizza.toppings.count < 5 {
            pizza.toppings.append(data.toppings[rowIndex])
            row.rowLabel.setTextColor(UIColor(red: 166/255, green: 221/255, blue: 255/255, alpha: 1))
        }
    }
    
    func tableRefresh(){
        toppingsTable.setNumberOfRows(data.toppings.count, withRowType: "row")
        
        for var i = 0; i < toppingsTable.numberOfRows; i++ {
            let row = toppingsTable.rowControllerAtIndex(i) as! ToppingsTableRowController
            row.rowLabel.setText(data.toppings[i])
            
            if pizza.toppings.contains(data.toppings[i]) {
                row.rowLabel.setTextColor(UIColor(red: 166/255, green: 221/255, blue: 255/255, alpha: 1))
            }
        }
    }
}
