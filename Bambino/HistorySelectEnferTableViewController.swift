//
//  HistorySelectEnferTableViewController.swift
//  Bambino
//
//  Created by Pablo Diaz on 06/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class HistorySelectEnferTableViewController: UITableViewController {
    
    var appData: ApplicationData!
    var index: Int!
    
    var date: NSDate!
    var alergia: String!
    var enfermedad: String!
    var medicina: String!
    var comentario: String!
    
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
        return appData.mama.bebBabies[index].arrEnfermedad.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...
        cell.textLabel?.text = appData.mama.bebBabies[index].arrEnfermedad[indexPath.row].strEnfermedades
        let dateFormatter: NSDateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MMM/yyyy"
        let fecha = dateFormatter.stringFromDate(appData.mama.bebBabies[index].arrEnfermedad[indexPath.row].fecha)
        cell.detailTextLabel?.text = fecha

        return cell
    }
    
    @IBAction func unwindSve(sender: UIStoryboardSegue) {
        
        let enfermedadToAdd = HEnfermedad(fecha: date, alergias: alergia, enfermedades: enfermedad, medicamento: medicina, comentarios: comentario)
        
        appData.mama.bebBabies[index].arrEnfermedad.append(enfermedadToAdd)
        
        self.tableView.reloadData()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
}
