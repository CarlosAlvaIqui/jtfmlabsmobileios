//
//  ViewControllerCrearCurso.swift
//  SegundaPracticaIOS
//
//  Created by MAC11 on 17/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewControllerCrearCurso: UIViewController {
var anteriorVC = ViewControllertabla()
    //txtCurso_Nom
    
    @IBOutlet weak var txtCursi_Nom: UITextField!
    @IBOutlet weak var txtNotanumero1: UITextField!
    
    @IBOutlet weak var txtNotanumero2: UITextField!
    
    @IBOutlet weak var txtNotanumero3: UITextField!
    
    @IBOutlet weak var txtNotanumero4: UITextField!
    
    @IBAction func agregar(_ sender: Any) {
        let curso = Cur()
        curso.nombrecu = txtCursi_Nom.text!
        curso.n1 = Int(txtNotanumero1.text!)!
        curso.n2 = Int(txtNotanumero2.text!)!
        curso.n3 = Int(txtNotanumero3.text!)!
        curso.n4 = Int(txtNotanumero4.text!)!
        anteriorVC.cursos.append(curso)
        anteriorVC.tableView.reloadData()
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
