//
//  FinishInterfaceController.swift
//  Pizza
//
//  Created by Sergio Acosta on 02/03/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import WatchKit
import Foundation


class FinishInterfaceController: WKInterfaceController {

    @IBAction func finishApp() {
        self.popToRootController()
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
