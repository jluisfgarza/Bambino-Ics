//
//  SignUpViewController.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfContra: UITextField!
    @IBOutlet weak var tfConfContra: UITextField!
    @IBOutlet weak var tfemail: UITextField!
    @IBOutlet weak var dpnacimiento: UIDatePicker!
    
    var appData: ApplicationData!

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(red: 80.0/255.0, green: 210.0/255.0, blue: 194.0/255.0, alpha: 0.0)
        self.view.addSubview(proxyViewForStatusBar)
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 80.0/255.0, green: 210.0/255.0, blue: 194.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quitarteclado(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if tfNombre.text == "" || tfContra.text != tfConfContra.text || tfemail.text == "" {
            return false
        }
        
        return true
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        appData.mama.strNombre = self.tfNombre.text!
        appData.mama.strPassword = self.tfContra.text!
        appData.mama.strCorreo = self.tfemail.text!
        appData.mama.FechaNacimiento = self.dpnacimiento.date
        appData.mama.bebBabies.removeAll()
        let view = segue.destinationViewController as! AddBabyViewController
        view.appData = appData
        
    }
}
