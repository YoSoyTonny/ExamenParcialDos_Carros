//
//  Modelo_Gasolina.swift
//  ProyectoParcialDos
//
//  Created by Tonny Gammer on 11/10/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Modelo_Gasolina {
    var Precio : String?
    var Litros : String?
    var placas : String?
    
    init(Precio : String, Litros : String, placas : String) {
        
        self.Precio = Precio
        self.Litros = Litros
        self.placas = placas
    }
    
    init(Precio : String, Litros : String) {
        
        self.Precio = Precio
        self.Litros = Litros
        
    }
}
