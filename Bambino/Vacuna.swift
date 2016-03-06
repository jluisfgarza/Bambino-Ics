//
//  Vacuna.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class Vacuna: NSObject {
    var fecha: Int
    var strVacuna: String
    var strEnfermedad: String
    var boolStatus: Bool
    
    override init() {
        self.fecha = 0
        self.strVacuna = ""
        self.strEnfermedad = ""
        self.boolStatus = false
    }
    
    init(fecha: Int, vacuna: String, enfermedad: String) {
        self.fecha = fecha
        self.strVacuna = vacuna
        self.strEnfermedad = enfermedad
        self.boolStatus = false
    }
}
