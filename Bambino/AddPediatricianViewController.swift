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
        
        
        self.navigationController?.toolbarHidden = true;
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Vacunas", style: UIBarButtonItemStyle.Bordered, target: self, action: "back:")
        self.navigationItem.leftBarButtonItem = newBackButton;
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tfPediatra.text = appData.mama.bebBabies[index].strNombrePediatra
        self.tfPediatra_tel.text = appData.mama.bebBabies[index].strTelefono
        self.tfPediatra_cel.text = appData.mama.bebBabies[index].strCelular
        self.tfPediatra_direc.text = appData.mama.bebBabies[index].strUbicacion
        
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(red: 0.48627450980392156, green: 0.070588235294117646, blue: 0.46274509803921571, alpha: 0.0)
        self.view.addSubview(proxyViewForStatusBar)
        
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        if self.navigationController != nil {
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green: 93.0/255.0, blue: 193.0/255.0, alpha: 1.0)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func back(sender: UIBarButtonItem) {
        // Perform your custom actions
        // ...
        // Go back to the previous ViewController
        self.navigationController?.popViewControllerAnimated(true)
       
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
