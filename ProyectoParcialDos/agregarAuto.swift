//
//  agregarAuto.swift
//  ProyectoParcialDos
//
//  Created by Tonny Gammer on 11/10/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class agregarAuto: UIViewController {
    
    var nuevoAuto : ((Modelo_Autos) -> Void)?
    

    @IBOutlet weak var tf_Placa: UITextField!
    @IBOutlet weak var tf_Conductor: UITextField!
    @IBOutlet weak var tf_Marca: UITextField!
    @IBOutlet weak var tf_Modelo: UITextField!
    @IBOutlet weak var tf_año: UITextField!
    
    @IBAction func btn_Guardar(_ sender: Any) {
        
        let nuevoModelo = Modelo_Autos(Placa: tf_Placa.text!, Conductor: tf_Conductor.text, Marca: tf_Marca.text, ModeloCarro: tf_Modelo.text, Fabricacion: tf_año.text, imagen: UIImage(named: "carro10"))
        
        nuevoAuto?(nuevoModelo)
        
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
