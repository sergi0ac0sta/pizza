//
//  ConfirmViewController.swift
//  Pizza
//
//  Created by Sergio Acosta on 29/02/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import UIKit

class ConfirmViewController: UIViewController {
    let data = Data()
    var pizza = Pizza()
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var sizeLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var toppingsLabel: UILabel!
    
    override func viewWillAppear(animated: Bool) {
        if pizza.toppings.count < 1 || pizza.toppings.count > 5{
            titleLabel.text = data.messages["error"]
            scrollView.hidden = true
        } else {
            titleLabel.text = data.messages["confirm"]
            
            sizeLabel.text = pizza.size
            massLabel.text = pizza.mass
            cheeseLabel.text = pizza.cheese
            
            for topping in pizza.toppings {
                toppingsLabel.text = toppingsLabel.text! + topping
                if topping != pizza.toppings.last {
                    toppingsLabel.text = toppingsLabel.text! + "\n"
                }
            }
            scrollView.hidden = false
        }
    }
}