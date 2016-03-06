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
        
        
        let proxyViewForStatusBar : UIView = UIView(frame: CGRectMake(0, 0,self.view.frame.size.width, 20))
        proxyViewForStatusBar.backgroundColor = UIColor(red: 0.48627450980392156, green: 0.070588235294117646, blue: 0.46274509803921571, alpha: 1)
        self.view.addSubview(proxyViewForStatusBar)
        
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        self.navigationController!.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green: 93.0/255.0, blue: 193.0/255.0, alpha: 1.0)
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
