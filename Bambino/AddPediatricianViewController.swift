//
//  AddPediatricianViewController.swift
//  Bambino
//
//  Created by Pablo Diaz on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class AddPediatricianViewController: UIViewController {

    @IBOutlet weak var tfPediatra: UITextField!
    @IBOutlet weak var tfPediatra_tel: UITextField!
    @IBOutlet weak var tfPediatra_cel: UITextField!
    @IBOutlet weak var tfPediatra_direc: UITextField!
    
    var appData: ApplicationData!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quitarteclado(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        self.appData.mama.bebBabies[0].strNombrePediatra = tfPediatra.text!
        self.appData.mama.bebBabies[0].strTelefono = tfPediatra_tel.text!
        self.appData.mama.bebBabies[0].strCelular = tfPediatra_cel.text!
        self.appData.mama.bebBabies[0].strUbicacion = tfPediatra_cel.text!
        
        let nav = segue.destinationViewController as! UINavigationController
        let home = nav.topViewController as! HomeViewController
        home.appData = self.appData
    }
}
