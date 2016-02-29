//
//  ViewController.swift
//  Pizza
//
//  Created by Sergio Acosta on 26/02/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var pizza: Pizza = Pizza()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! SizeViewController
        nextView.pizza = pizza
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

