//
//  SeePediatricianViewController.swift
//  Bambino
//
//  Created by Pablo Diaz on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class SeePediatricianViewController: UIViewController {
    
    
    @IBOutlet weak var tfNombre: UITextField!
    @IBOutlet weak var tfTelefono: UITextField!
    @IBOutlet weak var tfCelular: UITextField!
    @IBOutlet weak var tfUbicacion: UITextField!
    
    var appData: ApplicationData!
    var index: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tfNombre.text = appData.mama.bebBabies[index].strNombrePediatra
        self.tfTelefono.text = appData.mama.bebBabies[index].strTelefono
        self.tfCelular.text = appData.mama.bebBabies[index].strCelular
        self.tfUbicacion.text = appData.mama.bebBabies[index].strUbicacion
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
        
        let view = segue.destinationViewController as! AddPediatricianViewController
        view.appData = self.appData
        view.index = self.index
    }
}
