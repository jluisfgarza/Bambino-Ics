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
    
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        if self.navigationController != nil {
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 72.0/255.0, green: 190.0/255.0, blue: 176.0/255.0, alpha: 1.0)
        }
    
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
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)

        if indexPath.section == 0 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row].strVacuna)
            cell.detailTextLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row].strEnfermedad)
            if cell.accessoryType == .None && appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row].boolStatus {
                cell.accessoryType = .Checkmark
            }
            if cell.accessoryType == .Checkmark && (!appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row].boolStatus) {
                cell.accessoryType = .None
            }
        }
        else if indexPath.section == 1 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 2].strVacuna)
            cell.detailTextLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 2].strEnfermedad)
            if cell.accessoryType == .None && appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 2].boolStatus {
                cell.accessoryType = .Checkmark
            }
            if cell.accessoryType == .Checkmark && (!appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 2].boolStatus) {
                cell.accessoryType = .None
            }
        }
        else if indexPath.section == 2 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 6].strVacuna)
            cell.detailTextLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 6].strEnfermedad)
            if cell.accessoryType == .None && appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 6].boolStatus {
                cell.accessoryType = .Checkmark
            }
            if cell.accessoryType == .Checkmark && (!appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 6].boolStatus) {
                cell.accessoryType = .None
            }
        }
        else if indexPath.section == 3 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 9].strVacuna)
            cell.detailTextLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 9].strEnfermedad)
            if cell.accessoryType == .None && appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 9].boolStatus {
                cell.accessoryType = .Checkmark
            }
            if cell.accessoryType == .Checkmark && (!appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 9].boolStatus) {
                cell.accessoryType = .None
            }
        }
        else if indexPath.section == 4 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 13].strVacuna)
            cell.detailTextLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 13].strEnfermedad)
            if cell.accessoryType == .None && appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 13].boolStatus {
                cell.accessoryType = .Checkmark
            }
            if cell.accessoryType == .Checkmark && (!appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 13].boolStatus) {
                cell.accessoryType = .None
            }
        }
        else if indexPath.section == 5 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 14].strVacuna)
            cell.detailTextLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 14].strEnfermedad)
            if cell.accessoryType == .None && appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 14].boolStatus {
                cell.accessoryType = .Checkmark
            }
            if cell.accessoryType == .Checkmark && (!appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 14].boolStatus) {
                cell.accessoryType = .None
            }
        }
        else if indexPath.section == 6 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 16].strVacuna)
            cell.detailTextLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 16].strEnfermedad)
            if cell.accessoryType == .None && appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 16].boolStatus {
                cell.accessoryType = .Checkmark
            }
            if cell.accessoryType == .Checkmark && (!appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 16].boolStatus) {
                cell.accessoryType = .None
            }
            
        }
        else if indexPath.section == 7 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 17].strVacuna)
            cell.detailTextLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 17].strEnfermedad)
            if cell.accessoryType == .None && appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 17].boolStatus {
                cell.accessoryType = .Checkmark
            }
            if cell.accessoryType == .Checkmark && (!appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 17].boolStatus) {
                cell.accessoryType = .None
            }
            
        }
        else if indexPath.section == 8 {
            cell.textLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 18].strVacuna)
            cell.detailTextLabel?.text = (appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 18].strEnfermedad)
            if cell.accessoryType == .None && appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 18].boolStatus {
                cell.accessoryType = .Checkmark
            }
            if cell.accessoryType == .Checkmark && (!appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[indexPath.row + 18].boolStatus) {
                cell.accessoryType = .None
            }
        }
    
    return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
            var index = 0
            
            switch indexPath.section {
            case 0:
                index = indexPath.row
            case 1:
                index = indexPath.row + 2
            case 2:
                index = indexPath.row + 6
            case 3:
                index = indexPath.row + 9
            case 4:
                index = indexPath.row + 13
            case 5:
                index = indexPath.row + 14
            case 6:
                index = indexPath.row + 16
            case 7:
                index = indexPath.row + 17
            default:
                index = indexPath.row + 18
            }
            
            if tableView.cellForRowAtIndexPath(indexPath)!.accessoryType == .Checkmark
            {
                appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[index].boolStatus = false
            }
            else
            {
                appData.mama.bebBabies[appData.mama.bebBabies.count - 1].arrVacunas[index].boolStatus = true
            }
        
        self.tableView.reloadData()
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Al nacer"
        case 1:
            return "A los 2 meses"
        case 2:
            return "A los 4 meses"
        case 3:
            return "A los 6 meses"
        case 4:
            return "A los 7 meses"
        case 5:
            return "Al año"
        case 6:
            return "Al año y medio"
        case 7:
            return "A los 4 años"
        default:
            return "A los 6 años"
        }
    }
    
    func back(sender: UIBarButtonItem) {
        // Perform your custom actions
        // ...
        // Go back to the previous ViewController
        self.navigationController?.popViewControllerAnimated(true)
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 72.0/255.0, green: 190.0/255.0, blue: 176.0/255.0, alpha: 1.0)
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
