//
//  HistoryTableTPViewController.swift
//  Bambino
//
//  Created by Pablo Diaz on 06/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class HistoryTableTPViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UIToolbar.appearance().barTintColor = UIColor(red: 80.0/255.0, green: 210.0/255.0, blue: 194.0/255.0, alpha: 1.0)
        
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 72.0/255.0, green: 190.0/255.0, blue: 176.0/255.0, alpha: 1.0)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
