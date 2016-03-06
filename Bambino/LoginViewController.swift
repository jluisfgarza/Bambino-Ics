//
//  LoginViewController.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var tfCorreo: UITextField!
    @IBOutlet weak var tfContra: UITextField!
    
    var appData: ApplicationData!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.appData = ApplicationData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if (tfCorreo.text == "" || tfContra == "") && identifier == "login" {
            return false
        }
        
        return true
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "login" {
            let nav = segue.destinationViewController as! UINavigationController
            let home = nav.topViewController as! HomeViewController
            home.appData = self.appData
        }
        else {
            let view = segue.destinationViewController as! SignUpViewController
            view.appData = self.appData
        }
    }
}
