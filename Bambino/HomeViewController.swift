//
//  HomeViewController.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
         UINavigationBar.appearance().barTintColor = UIColor(red: 101.0/255.0, green: 99.0/255.0, blue: 164.0/255.0, alpha: 1.0)
        UIToolbar.appearance().barTintColor = UIColor(red: 101.0/255.0, green: 99.0/255.0, blue: 164.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
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
