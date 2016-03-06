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

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
        
        let view = segue.destinationViewController as! AddBabyViewController
        view.appData = appData
        
    }
}
