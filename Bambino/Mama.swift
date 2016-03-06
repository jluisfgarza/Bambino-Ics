//
//  Mama.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class Mama: NSObject {
    var strNombre: String
    var strCorreo: String
    var strPassword: String
    var strFechaNacimiento: NSDate
    var bebBabies: [Bebe]
    
    override init() {
        self.strNombre = ""
        self.strCorreo = ""
        self.strPassword = ""
        self.strFechaNacimiento = NSDate()
        self.bebBabies = []
    }
    
    init(nombre: String, correo: String, password: String, fechaNacimiento: NSDate) {
        self.strNombre = nombre
        self.strCorreo = correo
        self.strPassword = password
        self.strFechaNacimiento = fechaNacimiento
        self.bebBabies = []
    }
}
