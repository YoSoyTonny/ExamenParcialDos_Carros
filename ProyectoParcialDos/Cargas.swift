//
//  Cargas.swift
//  ProyectoParcialDos
//
//  Created by Tonny Gammer on 11/10/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class Cargas: UIViewController {
    
    var Data : Modelo_Autos?
    var state : Bool?
    
    
    var editAuto : ((Modelo_Autos) -> Void)?

    @IBOutlet weak var tf_Placa: UITextField!
    @IBOutlet weak var tf_Conductor: UITextField!
    @IBOutlet weak var tf_Marca: UITextField!
    @IBOutlet weak var tf_Modelo: UITextField!
    @IBOutlet weak var tf_Año: UITextField!
    
    
    @IBOutlet weak var tv_Gasolinaso: UITableView!
    
    var CargaRojaOVerde : [Modelo_Gasolina] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        state = false
        
        tf_Placa.text = Data?.Placa
        tf_Conductor.text = Data?.Conductor
        tf_Marca.text = Data?.Marca
        tf_Modelo.text = Data?.ModeloCarro
        tf_Año.text = Data?.Fabricacion
        
        tf_Placa.isEnabled = false
        tf_Conductor.isEnabled = false
        tf_Marca.isEnabled = false
        tf_Modelo.isEnabled = false
        tf_Año.isEnabled = false
        
        
    }
    @IBAction func btn_editar(_ sender: Any) {
        if state == false{
            tf_Placa.isEnabled = true
            tf_Conductor.isEnabled = true
            tf_Marca.isEnabled = true
            tf_Modelo.isEnabled = true
            tf_Año.isEnabled = true
        }else{
        
            let nuevoModelo = Modelo_Autos(Placa: tf_Placa.text!, Conductor: tf_Conductor.text, Marca: tf_Marca.text, ModeloCarro: tf_Modelo.text, Fabricacion: tf_Año.text)
            
            editAuto!(nuevoModelo)
            state = false
            
            navigationController?.popViewController(animated: true)
            
    }
    
    }
    
}
