//
//  ToppingsViewController.swift
//  Pizza
//
//  Created by Sergio A Acosta Lozano on 2/27/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import UIKit

class ToppingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let data = Data()
    let textCellIdentifier = "TextCell"
    var pizza: Pizza = Pizza()

    @IBOutlet weak var toppingsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.toppingsTableView.dataSource = self
        self.toppingsTableView.delegate = self
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! ConfirmViewController
        nextView.pizza = pizza
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.toppings.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier(textCellIdentifier, forIndexPath: indexPath)
        let row = indexPath.row
        cell.textLabel?.text = data.toppings[row]
        
        if pizza.toppings.contains(cell.textLabel!.text!) {
            tableView.selectRowAtIndexPath(indexPath, animated: false, scrollPosition: UITableViewScrollPosition.None)
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let row = indexPath.row
        pizza.toppings.append(data.toppings[row])
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        pizza.toppings.removeAtIndex(pizza.toppings.indexOf((cell?.textLabel?.text)!)!)
    }
}