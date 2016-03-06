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
        
        let peso = Double(tfPeso.text!)!
        let talla = Double(tfTalla.text!)!
        
        let baby = Bebe(nombre: self.tfNombre.text!, fechaNacimiento: NSDate(), peso: peso, talla: talla)
        
        self.appData.mama.bebBabies.append(baby)
        
        let view = segue.destinationViewController as! AddVacunasViewController
        view.appData = self.appData
    }


}
