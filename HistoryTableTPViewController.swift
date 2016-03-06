//
//  HistoryTableTPViewController.swift
//  Bambino
//
//  Created by Pablo Diaz on 06/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class HistoryTableTPViewController: UIViewController {
    
    @IBOutlet weak var tfPesoActual: UITextField!
    @IBOutlet weak var tfTallaActual: UITextField!
    
    
    @IBOutlet weak var lbDesnutrido: UILabel!
    @IBOutlet weak var lbNormal: UILabel!
    @IBOutlet weak var lbSobrepeso: UILabel!
    @IBOutlet weak var lbObeso: UILabel!
    @IBOutlet weak var lbEstadoPeso: UILabel!
    
    
    @IBOutlet weak var lbBajo: UILabel!
    @IBOutlet weak var lbNormalEst: UILabel!
    @IBOutlet weak var lbEstadoTalla: UILabel!
    
    var arrDatos: NSArray!
    var appData: ApplicationData!
    var index: Int!
    
    @IBAction func btCalcular(sender: AnyObject) {
        
        let pesoActual = tfPesoActual.text!
        let tallaActual = tfTallaActual.text!
        
        if pesoActual < lbDesnutrido.text {
            self.lbEstadoPeso.text = "Tu hijo está en la categoría de: Desnutrido"
        }
        else if pesoActual > lbObeso.text {
            self.lbEstadoPeso.text = "Tu hijo está en la categoría de: Obesidad"
        }
        else if pesoActual > lbSobrepeso.text {
            self.lbEstadoPeso.text = "Tu hijo está en la categoría de: Sobrepeso"
        }
        else {
            self.lbEstadoPeso.text = "Tu hijo está en la categoría de: Peso Normal"
        }
        
        if tallaActual < lbBajo.text {
            self.lbEstadoTalla.text = "Tu hijo está en la categoría de: bajo"
        }
        else {
            self.lbEstadoTalla.text = "Tu hijo está en la categoría de: Normal"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        UIToolbar.appearance().barTintColor = UIColor(red: 80.0/255.0, green: 210.0/255.0, blue: 194.0/255.0, alpha: 1.0)
        
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 72.0/255.0, green: 190.0/255.0, blue: 176.0/255.0, alpha: 1.0)
        // Do any additional setup after loading the view.
        
        let path = NSBundle.mainBundle().pathForResource("PesoTalla", ofType: "plist")
        self.arrDatos = NSArray(contentsOfFile: path!)
        
        var months = NSCalendar.currentCalendar().components(.Month, fromDate: self.appData.mama.bebBabies[index].fechaNacimiento, toDate: NSDate(), options: []).month
        
        if self.appData.mama.bebBabies[index].strSexo == "Niño" {
            
            var dicHombre = self.arrDatos[1] as! NSDictionary
            if months <= 12 {
                dicHombre = dicHombre.valueForKey(String(months)) as! NSDictionary
            }
            else {
                months = months - months % 6
                dicHombre = dicHombre.valueForKey(String(months)) as! NSDictionary
            }
            
            self.lbDesnutrido.text = String((dicHombre.valueForKey("Peso")?.valueForKey("Desnutricion")?.doubleValue)!)
            self.lbNormal.text = String((dicHombre.valueForKey("Peso")?.valueForKey("Normal")?.doubleValue)!)
            self.lbSobrepeso.text = String((dicHombre.valueForKey("Peso")?.valueForKey("Sobrepeso")?.doubleValue)!)
            self.lbObeso.text = String((dicHombre.valueForKey("Peso")?.valueForKey("Obesidad")?.doubleValue)!)
            self.lbEstadoPeso.text = ""
            
            self.lbBajo.text = String((dicHombre.valueForKey("Talla")?.valueForKey("Baja")?.doubleValue)!)
            self.lbNormalEst.text = String((dicHombre.valueForKey("Talla")?.valueForKey("Normal")?.doubleValue)!)
            self.lbEstadoTalla.text = ""
            
        }
        else {
            var dicHombre = self.arrDatos[0] as! NSDictionary
            if months <= 12 {
                dicHombre = dicHombre.valueForKey(String(months)) as! NSDictionary
            }
            else {
                months = months - months % 6
                dicHombre = dicHombre.valueForKey(String(months)) as! NSDictionary
            }
            
            self.lbDesnutrido.text = String((dicHombre.valueForKey("Peso")?.valueForKey("Desnutricion")?.doubleValue)!)
            self.lbNormal.text = String((dicHombre.valueForKey("Peso")?.valueForKey("Normal")?.doubleValue)!)
            self.lbSobrepeso.text = String((dicHombre.valueForKey("Peso")?.valueForKey("Sobrepeso")?.doubleValue)!)
            self.lbObeso.text = String((dicHombre.valueForKey("Peso")?.valueForKey("Obesidad")?.doubleValue)!)
            self.lbEstadoPeso.text = ""
            
            self.lbBajo.text = String((dicHombre.valueForKey("Talla")?.valueForKey("Baja")?.doubleValue)!)
            self.lbNormalEst.text = String((dicHombre.valueForKey("Talla")?.valueForKey("Normal")?.doubleValue)!)
            self.lbEstadoTalla.text = ""
        }
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
