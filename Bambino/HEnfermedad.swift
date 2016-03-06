//
//  HEnfermedad.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class HEnfermedad: NSObject {
    var fecha: NSDate
    var strAlergias: String
    var strEnfermedades: String
    var strMedicamento: String
    var strComentarios:String
    
    override init() {
        self.fecha = NSDate()
        self.strAlergias = ""
        self.strEnfermedades = ""
        self.strMedicamento = ""
        self.strComentarios = ""
    }
    
    init(fecha: NSDate, alergias: String, enfermedades: String, medicamento: String, comentarios: String) {
        self.fecha = fecha
        self.strAlergias = alergias
        self.strEnfermedades = enfermedades
        self.strMedicamento = medicamento
        self.strComentarios = comentarios
    }
}
