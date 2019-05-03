//
//  ViewController.swift
//  TableView
//
//  Created by MAC11 on 21/03/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet var Tabla: UITableView!
    var contenidoCeldas = ["recurso1","recurso2","recurso3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Tabla.dataSource = self
        Tabla.delegate = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        return contenidoCeldas.count
        }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let recursoSleccionado = indexPath.row
        self.performSegue(withIdentifier: "PantallaDosSegue", sender: recursoSleccionado)
        print("Hizo clic en la fila: \(indexPath.row)")
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:IndexPath) -> UITableViewCell {
        let celda = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Celda")
        celda.textLabel?.text = contenidoCeldas[indexPath.row]
        return celda
    }


}

