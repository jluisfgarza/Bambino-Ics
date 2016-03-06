//
//  SelectKidTableViewController.swift
//  Bambino
//
//  Created by Pablo Diaz on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

extension NSDate {
    func monthsFrom(date:NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.Month, fromDate: date, toDate: self, options: []).month
    }
}

class SelectKidTableViewController: UITableViewController {
    
    var appData: ApplicationData!
    var segueID: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return appData.mama.bebBabies.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! KidsTableViewCell

        cell.lbNombre.text = self.appData.mama.bebBabies[indexPath.row].strNombre
        let months = NSCalendar.currentCalendar().components(.Month, fromDate: self.appData.mama.bebBabies[indexPath.row].fechaNacimiento, toDate: NSDate(), options: []).month
        cell.lbEdad.text = String(months)
        cell.lbPediatra.text = self.appData.mama.bebBabies[indexPath.row].strNombrePediatra

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if segueID == "pediatra" {
            performSegueWithIdentifier("seguePediatra", sender: nil)
        }
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "seguePediatra" {
            let view = segue.destinationViewController as! SeePediatricianViewController
            view.appData = self.appData
            view.index = self.tableView.indexPathForSelectedRow?.row
        }
    }
}
