//
//  AddBabyViewController.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class AddBabyViewController: UIViewController {
    
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var dpFecha: UIDatePicker!
    @IBOutlet weak var tfPeso: UITextField!
    @IBOutlet weak var tfTalla: UITextField!
    
    var appData: ApplicationData!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.toolbarHidden = true;
        self.navigationItem.hidesBackButton = true
        let newBackButton = UIBarButtonItem(title: "Menú", style: UIBarButtonItemStyle.Bordered, target: self, action: "back:")
        self.navigationItem.leftBarButtonItem = newBackButton;
        
        
        

        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(red: 80.0/255.0, green: 210.0/255.0, blue: 194.0/255.0, alpha: 0.0)
        self.view.addSubview(proxyViewForStatusBar)
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 80.0/255.0, green: 210.0/255.0, blue: 194.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]

        // Do any additional setup after loading the view.
    }
    
    func back(sender: UIBarButtonItem) {
        // Perform your custom actions
        // ...
        // Go back to the previous ViewController
        self.navigationController?.popViewControllerAnimated(true)
            self.navigationController?.toolbarHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if tfNombre.text == "" || tfPeso.text == "" || tfTalla.text == "" {
            return false
        }
        
        return true
    }

    @IBAction func quitarteclado(sender: UITapGestureRecognizer) {
        self.view.endEditing(true)
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let peso = Double(tfPeso.text!)!
        let talla = Double(tfTalla.text!)!
        let date = self.dpFecha.date
        
        let baby = Bebe(nombre: self.tfNombre.text!, fechaNacimiento: date, peso: peso, talla: talla)
        
        self.appData.mama.bebBabies.append(baby)
        
        let view = segue.destinationViewController as! AddVacunasViewController
        view.appData = self.appData
    }


}
