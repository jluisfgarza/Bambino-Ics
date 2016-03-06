//
//  HistoryVacunasTableViewController.swift
//  Bambino
//
//  Created by Alex De la Rosa on 06/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class HistoryVacunasTableViewController: UITableViewController {
    
    var appData: ApplicationData!
    var index: Int!
    var arrVacunas: [Vacuna] = []
    var iCont = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        for vacuna in appData.mama.bebBabies[index].arrVacunas {
            if vacuna.boolStatus {
                iCont++
                arrVacunas.append(vacuna)
            }
        }
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
        
        return iCont
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        // Configure the cell...
        cell.textLabel?.text = self.arrVacunas[indexPath.row].strVacuna
        cell.detailTextLabel?.text = self.arrVacunas[indexPath.row].strEnfermedad

        return cell
    }
}
