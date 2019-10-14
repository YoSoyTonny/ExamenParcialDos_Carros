//
//  GasolinaController.swift
//  ProyectoParcialDos
//
//  Created by Tonny Gammer on 11/10/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class GasolinaController: UIViewController {

    @IBOutlet weak var tf_Precio: UITextField!
    @IBOutlet weak var tf_Litros: UITextField!
    
    
    @IBAction func btn_Guardado(_ sender: Any) {
        let CargaRojaoVerde = Modelo_Gasolina(Precio: tf_Precio.text!, Litros: tf_Litros.text!)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
   

}
