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
        self.strNombre = "Luisito"
        self.fechaNacimiento = NSDate()
        self.douPeso = 3
        self.douTalla = 50
        self.strNombrePediatra = "Cesar Saldaña"
        self.strTelefono = "12345678"
        self.strCelular = "98765432"
        self.strUbicacion = "IMSS #25"
        self.arrConsulta = []
        self.arrVacunas = []
        self.arrEventoProximo = []
        self.pesoTalla = PesoTalla()
        
        let path = NSBundle.mainBundle().pathForResource("Vacunas", ofType: "plist")
        let nsarrayVacunas = NSArray(contentsOfFile: path!)
        
        for dict in nsarrayVacunas! {
            let vacuna = Vacuna()
            vacuna.fecha = (dict.objectForKey("Fecha")?.integerValue)!
            vacuna.strVacuna = String(dict.objectForKey("Vacuna")!)
            vacuna.strEnfermedad = String(dict.objectForKey("Enfermedad")!)
            
            self.arrVacunas.append(vacuna)
        }
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
        
        let path = NSBundle.mainBundle().pathForResource("Vacunas", ofType: "plist")
        let nsarrayVacunas = NSArray(contentsOfFile: path!)
        
        for dict in nsarrayVacunas! {
            let vacuna = Vacuna()
            vacuna.fecha = (dict.objectForKey("Fecha")?.integerValue)!
            vacuna.strVacuna = String(dict.objectForKey("Vacuna")!)
            vacuna.strEnfermedad = String(dict.objectForKey("Enfermedad")!)
            
            self.arrVacunas.append(vacuna)
        }
    }
}
