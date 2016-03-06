//
//  Bebe.swift
//  Bambino
//
//  Created by Alex De la Rosa on 05/03/16.
//  Copyright © 2016 Temporal3.0. All rights reserved.
//

import UIKit

class Bebe: NSObject {
    var strNombre: String
    var fechaNacimiento: NSDate
    var douPeso: Double
    var douTalla: Double
    var strNombrePediatra: String
    var strTelefono: String
    var strCelular: String
    var strUbicacion: String
    var arrConsulta: [Consulta]
    var arrVacunas: [Vacuna]
    var arrEventoProximo: [EventoProximo]
    var pesoTalla: PesoTalla
    
    override init() {
        self.strNombre = ""
        self.fechaNacimiento = NSDate()
        self.douPeso = 0
        self.douTalla = 0
        self.strNombrePediatra = ""
        self.strTelefono = ""
        self.strCelular = ""
        self.strUbicacion = ""
        self.arrConsulta = []
        self.arrVacunas = []
        self.arrEventoProximo = []
        self.pesoTalla = PesoTalla()
    }
    
    init(nombre: String, fechaNacimiento: NSDate, peso: Double, talla: Double) {
        self.strNombre = nombre
        self.fechaNacimiento = fechaNacimiento
        self.douPeso = peso
        self.douTalla = peso
        self.strNombrePediatra = ""
        self.strTelefono = ""
        self.strCelular = ""
        self.strUbicacion = ""
        self.arrConsulta = []
        self.arrVacunas = []
        self.arrEventoProximo = []
        self.pesoTalla = PesoTalla()
    }

}
