//
//  HomeViewController.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var lbUsuario: UILabel!
    
    var appData: ApplicationData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(red: 0.48627450980392156, green: 0.070588235294117646, blue: 0.46274509803921571, alpha: 1)
        self.view.addSubview(proxyViewForStatusBar)
        
         UINavigationBar.appearance().barTintColor = UIColor(red: 80.0/255.0, green: 210.0/255.0, blue: 194.0/255.0, alpha: 1.0)
        
        UIToolbar.appearance().barTintColor = UIColor(red: 80.0/255.0, green: 210.0/255.0, blue: 194.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        // Do any additional setup after loading the view.
        
        self.lbUsuario.text = "Hola \(self.appData.mama.strNombre)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        self.navigationController?.toolbarHidden = false
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "segueEvento"  || segue.identifier == "pediatra" || segue.identifier == "historial" {
            let view = segue.destinationViewController as! SelectKidTableViewController
            view.appData = self.appData
            view.segueID = segue.identifier
        }
        else {
            
        }
    }
}
