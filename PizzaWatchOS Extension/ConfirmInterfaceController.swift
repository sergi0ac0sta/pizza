//
//  ConfirmInterfaceController.swift
//  Pizza
//
//  Created by Sergio Acosta on 02/03/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import WatchKit
import Foundation


class ConfirmInterfaceController: WKInterfaceController {
    var pizza: Pizza = Pizza()
    
    @IBOutlet var errorLabel: WKInterfaceLabel!
    @IBOutlet var confirmationGroup: WKInterfaceGroup!
    @IBOutlet var sizeLabel: WKInterfaceLabel!
    @IBOutlet var massLabel: WKInterfaceLabel!
    @IBOutlet var cheeseLabel: WKInterfaceLabel!
    @IBOutlet var toppingsLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        pizza = context as! Pizza
    }

    override func willActivate() {
        super.willActivate()
        if pizza.toppings.count > 0 && pizza.toppings.count <= 5 {
            errorLabel.setHidden(true)
            confirmationGroup.setHidden(false)
            
            sizeLabel.setText(pizza.size)
            massLabel.setText(pizza.mass)
            cheeseLabel.setText(pizza.cheese)
            
            var toppingsString: String = ""
            for topping in pizza.toppings {
                toppingsString = toppingsString + topping
                if pizza.toppings.last != topping {
                    toppingsString = toppingsString + "\n"
                }
            }
            toppingsLabel.setText(toppingsString)
        } else {
            errorLabel.setHidden(false)
            confirmationGroup.setHidden(true)
        }
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
