//
//  ViewController.swift
//  ProyectoParcialDos
//
//  Created by Alumno on 10/8/19.
//  Copyright © 2019 Alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableViiew: UITableView!
    
    var Lista : [Modelo_Autos] = []
    var fila : Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViiew.dataSource = self
        tableViiew.delegate = self
        Lista = createArray()
        
    }
    
    func createArray() -> [Modelo_Autos] {
        var tempLista: [Modelo_Autos] = []
        
        let L1 = Modelo_Autos(Placa: "ADJ-81U", Conductor: "Martin", Marca: "Nissan", ModeloCarro: "Sentra", Fabricacion: "2014", imagen: UIImage(named:"carro2" ) )
        let L2 = Modelo_Autos(Placa: "RIP-UDT", Conductor: "Bob", Marca: "Toyota", ModeloCarro: "Arris", Fabricacion: "2019",imagen: UIImage(named:"carro3" ))
        let L3 = Modelo_Autos(Placa: "KLM-SMS", Conductor: "Josh", Marca: "Zapopa", ModeloCarro: "Koko", Fabricacion: "2016",imagen: UIImage(named:"carro4" ))
        let L4 = Modelo_Autos(Placa: "YRD-666", Conductor: "Undertaker", Marca: "kalimba", ModeloCarro: "GTR", Fabricacion: "2019",imagen: UIImage(named:"carro5" ))
        let L5 = Modelo_Autos(Placa: "A76-OO2", Conductor: "Emiliano", Marca: "Ford", ModeloCarro: "Cangrejo", Fabricacion: "2012", imagen: UIImage(named:"carro6" ))
        let L6 = Modelo_Autos(Placa: "KAS-88D", Conductor: "LaferLafer", Marca: "Milanesa", ModeloCarro: "fiwish", Fabricacion: "2017", imagen: UIImage(named:"carro7" ))
        
        tempLista.append(L1)
        tempLista.append(L2)
        tempLista.append(L3)
        tempLista.append(L4)
        tempLista.append(L5)
        tempLista.append(L6)
        
        return tempLista
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToNuevoAuto" {
            
            let controllerDestination = segue.destination as? agregarAuto
            
            controllerDestination?.nuevoAuto = nuevoAuto
            
        }
        if segue.identifier == "goToModificaCarga"{
            let controllerDestination = segue.destination as? Cargas
            
            let indexPath = tableViiew.indexPath(for: (sender as? UITableViewCell)!)
            
            let listDestination = Lista[indexPath!.row]
            
            fila = indexPath?.row
            controllerDestination?.editAuto = editarAuto
            
            controllerDestination?.Data = listDestination
            
        }
    }
    
    func nuevoAuto (auto: Modelo_Autos) {
        Lista.append(auto)
        tableViiew.reloadData()
        
    }
    
    func editarAuto (auto: Modelo_Autos) {
        Lista[fila!] = auto
        tableViiew.reloadData()
        
    }
    

}
extension ViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Lista.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell_ViewController
        
        
        let list = Lista[indexPath.row]
        cell.set(Modelo: list)
        
        return cell
    }
    
}


