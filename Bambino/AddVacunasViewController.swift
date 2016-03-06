//
//  AddVacunasViewController.swift
//  Bambino
//
//  Created by Pablo Diaz on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class AddVacunasViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var appData: ApplicationData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        self.navigationController?.toolbarHidden = true;
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Agregar bebé", style: UIBarButtonItemStyle.Bordered, target: self, action: "back:")
        self.navigationItem.leftBarButtonItem = newBackButton;
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        let months = NSCalendar.currentCalendar().components(.Month, fromDate: self.appData.mama.bebBabies[appData.mama.bebBabies.count - 1].fechaNacimiento, toDate: NSDate(), options: []).month
        
        if months < 2 {
            return 1
        }
        else if months < 4 {
            return 2
        }
        else if months < 6 {
            return 3
        }
        else if months < 7 {
            return 4
        }
        else if months < 12 {
            return 5
        }
        else if months < 18 {
            return 6
        }
        else if months < 48 {
            return 7
        }
        else if months < 72 {
            return 8
        }

        return 9
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 2
        case 1:
            return 4
        case 2:
            return 3
        case 3:
            return 4
        case 4:
            return 1
        case 5:
            return 2
        case 6:
            return 1
        case 7:
            return 1
        default:
            return 1
        }
        
        
        // #warning Incomplete implementation, return the number of rows
        
        /*let months = NSCalendar.currentCalendar().components(.Month, fromDate: self.appData.mama.bebBabies[appData.mama.bebBabies.count - 1].fechaNacimiento, toDate: NSDate(), options: []).month
        
        var iCont = 0
        
        while iCont < self.appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas.count &&
        self.appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[iCont].fecha <= months
        {
            iCont++
        }
        
        return iCont*/
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
    /*
    cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row].strVacuna)
    */
    
        if indexPath.section == 0 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row].strVacuna)
        }
        else if indexPath.section == 1 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 2].strVacuna)
        }
        else if indexPath.section == 2 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 6].strVacuna)
        }
        else if indexPath.section == 3 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 9].strVacuna)
        }
        else if indexPath.section == 4 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 13].strVacuna)
        }
        else if indexPath.section == 5 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 14].strVacuna)
        }
        else if indexPath.section == 6 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 16].strVacuna)
            
        }
        else if indexPath.section == 7 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 17].strVacuna)
            
        }
        else if indexPath.section == 8 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 18].strVacuna)
            
        }
    
    return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if let cell = tableView.cellForRowAtIndexPath(indexPath) {
            if cell.accessoryType == .Checkmark
            {
                cell.accessoryType = .None
                appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row].boolStatus = false
            }
            else
            {
                cell.accessoryType = .Checkmark
                appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row].boolStatus = true
            }
        }
    }
    
    func back(sender: UIBarButtonItem) {
        // Perform your custom actions
        // ...
        // Go back to the previous ViewController
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let view = segue.destinationViewController as! AddPediatricianViewController
        view.appData = self.appData
        view.index = appData.mama.bebBabies.count - 1
    }
}
