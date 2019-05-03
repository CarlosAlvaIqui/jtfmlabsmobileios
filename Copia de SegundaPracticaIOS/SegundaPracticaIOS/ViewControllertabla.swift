//
//  ViewControllertabla.swift
//  SegundaPracticaIOS
//
//  Created by MAC11 on 17/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewControllertabla: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    

    
    @IBOutlet weak var tableView: UITableView!
    var cursos:[Cur] = []
    func  crearCursos() -> [Cur] {
        let curso1 = Cur()
        curso1.nombrecu = "math"
         curso1.n1 = 15
         curso1.n2 = 16
         curso1.n3 = 17
         curso1.n4 = 18
        let curso2 = Cur()
        curso2.nombrecu = "math"
        curso2.n1 = 15
        curso2.n2 = 16
        curso2.n3 = 17
        curso2.n4 = 18
        
        return[curso1,curso2]
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cursos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let cursos = self.cursos[indexPath.row]
        cell.textLabel?.text = cursos.nombrecu
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let curso = cursos[indexPath.row]
        performSegue(withIdentifier: "CursoSeleccionadoSegue", sender: curso)
    }
    
    @IBAction func agregarCurso(_ sender: Any) {
        performSegue(withIdentifier: "agregarSegue", sender: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        cursos = crearCursos()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "agregarSegue"{
        let siguienteVC = segue.destination as! ViewControllerCrearCurso
        siguienteVC.anteriorVC = self}
        else{
            let siguienteVC = segue.destination as! ViewControllerCursoCompletado
            siguienteVC.curso = sender as! Cur
        }
        
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
