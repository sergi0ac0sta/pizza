//
//  InterfaceController.swift
//  PizzaWatchOS Extension
//
//  Created by Sergio Acosta on 01/03/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import WatchKit
import Foundation

class MainInterfaceController: WKInterfaceController {
    var pizza: Pizza = Pizza()
    
    @IBAction func startApp() {
        pushControllerWithName("pizza", context: pizza)
    }

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        //WKInterfaceController.reloadRootControllersWithNames(["init","pizza","pizzaWithSize","pizzaWithMass","pizzaWithCheese","pizzaWithToppings","pizzaWithConfirmation"],contexts: nil)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
