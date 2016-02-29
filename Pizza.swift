//
//  Pizza.swift
//  Pizza
//
//  Created by Sergio Acosta on 26/02/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import Foundation

class Pizza {
    var size: String? = nil
    var mass: String? = nil
    var cheese: String? = nil
    var toppings: [String] = []
    
    func addToppings(toppings: [String]) {
        self.toppings += toppings
    }
    
    func removeToppings(toppings: [String]) {
        for topping in toppings {
            if self.toppings.indexOf(topping) != -1 {
                self.toppings.removeAtIndex(self.toppings.indexOf(topping)!)
            }
        }
    }
}