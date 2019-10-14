//
//  Modelo.swift
//  ProyectoParcialDos
//
//  Created by Tonny Gammer on 09/10/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import Foundation
import UIKit

class Modelo_Autos
{
    var Placa: String
    var Conductor: String?
    var Marca: String?
    var ModeloCarro: String?
    var Fabricacion: String?
    var imagen: UIImage?
    
    init(Placa : String, Conductor : String?, Marca : String?, ModeloCarro : String?, Fabricacion : String?, imagen: UIImage?) {
        self.Placa = Placa
        
        if let M_Conductor = Conductor
        {
            self.Conductor = M_Conductor
        }
        
        if let M_marca = Marca
        {
            self.Marca = M_marca
        }
        
        if let M_modelo = ModeloCarro
        {
            self.ModeloCarro = M_modelo
        }
        
        if let M_fabricacion = Fabricacion
        {
            self.Fabricacion = M_fabricacion
        }
        
        self.imagen = imagen
    }
    
    init(Placa : String, Conductor : String?, Marca : String?, ModeloCarro : String?, Fabricacion : String?) {
        self.Placa = Placa
        
        if let M_Conductor = Conductor
        {
            self.Conductor = M_Conductor
        }
        
        if let M_marca = Marca
        {
            self.Marca = M_marca
        }
        
        if let M_modelo = ModeloCarro
        {
            self.ModeloCarro = M_modelo
        }
        
        if let M_fabricacion = Fabricacion
        {
            self.Fabricacion = M_fabricacion
        }
    }
}
