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
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tfPediatra.text = appData.mama.bebBabies[index].strNombrePediatra
        self.tfPediatra_tel.text = appData.mama.bebBabies[index].strTelefono
        self.tfPediatra_cel.text = appData.mama.bebBabies[index].strCelular
        self.tfPediatra_direc.text = appData.mama.bebBabies[index].strUbicacion
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func quitarteclado(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if tfPediatra.text == "" || tfPediatra_tel.text == "" || tfPediatra_cel.text == "" || tfPediatra_direc.text == "" {
            return false
        }
        
        return true
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        self.appData.mama.bebBabies[index].strNombrePediatra = tfPediatra.text!
        self.appData.mama.bebBabies[index].strTelefono = tfPediatra_tel.text!
        self.appData.mama.bebBabies[index].strCelular = tfPediatra_cel.text!
        self.appData.mama.bebBabies[index].strUbicacion = tfPediatra_direc.text!
        
        let nav = segue.destinationViewController as! UINavigationController
        let home = nav.topViewController as! HomeViewController
        home.appData = self.appData
    }
}
