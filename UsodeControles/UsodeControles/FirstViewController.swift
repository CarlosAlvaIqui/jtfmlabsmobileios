//
//  FirstViewController.swift
//  UsodeControles
//
//  Created by MAC11 on 4/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var txtRpta:
    UITextField!
    
    @IBOutlet weak var txtNumero1: UITextField!
    
    @IBOutlet weak var txtNumero2: UITextField!
    
    var nro1:Double = 0
    var nro2:Double = 0
    var rpta:Double = 0
    
    @IBAction func btnSumar(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil
        {
        nro1 = Double(txtNumero1.text!)!
        nro2 = Double(txtNumero2.text!)!
            rpta = nro1 + nro2
        txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "error", mensaje: "Deve introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @IBAction func resta(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil
        {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 - nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "error", mensaje: "Deve introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @IBAction func division(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil
        {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 / nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "error", mensaje: "Deve introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @IBAction func multiplicacion(_ sender: Any) {
        if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil
        {
            nro1 = Double(txtNumero1.text!)!
            nro2 = Double(txtNumero2.text!)!
            rpta = nro1 * nro2
            txtRpta.text = String(rpta)
        }else{
            mostrarAlerta(titulo: "error", mensaje: "Deve introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @IBAction func limpiar(_ sender: Any) {
         if Double(txtNumero1.text!) != nil && Double(txtNumero2.text!) != nil
        {
            self.txtNumero1.text = ""
            self.txtNumero2.text = ""
            self.txtRpta.text = ""
        }else{
            mostrarAlerta(titulo: "error", mensaje: "Deve introducir solo valores numericos")
            print("Error al realizar la operacion")
        }
    }
    
    @objc func ocultarteclado() {
        view.endEditing(true)
    }
    func Limpiar() {
        self.txtNumero1.text = "0"
        self.txtNumero2.text = "0"
        self.txtRpta.text = "0"
    }
    func mostrarAlerta(titulo: String, mensaje: String){
        let alerta = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let limpiar = UIAlertAction(title: "Limpiar", style: .default, handler: {(action) in self.Limpiar() })
        
        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel, handler: {(action) in
            
        })
        alerta.addAction(limpiar)
        alerta.addAction(cancelar)
        present(alerta, animated:  true, completion: nil)
        
        
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ocultarteclado)); view.addGestureRecognizer(tap)
        // Do any additional setup after loading the view, typically from a nib.
    }

    

}

