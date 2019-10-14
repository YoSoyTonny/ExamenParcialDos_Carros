//
//  Cell_ViewController.swift
//  ProyectoParcialDos
//
//  Created by Tonny Gammer on 09/10/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class Cell_ViewController: UITableViewCell {

    @IBOutlet weak var imgCarro: UIImageView!
    @IBOutlet weak var lblAño: UILabel!
    @IBOutlet weak var lblConductor: UILabel!
    @IBOutlet weak var lblMarca: UILabel!
    @IBOutlet weak var lblModelo: UILabel!
    @IBOutlet weak var lblMatricula: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    func set(Modelo: Modelo_Autos)
    {
        lblConductor.text = Modelo.Conductor
        lblAño.text = Modelo.Fabricacion
        lblMarca.text = Modelo.Marca
        lblMatricula.text = Modelo.Placa
        lblModelo.text = Modelo.ModeloCarro
        imgCarro.image = Modelo.imagen
    }
    
}
