//
//  ViewController2.swift
//  miprimerAppmacos
//
//  Created by MAC11 on 14/03/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("Se activo la funcion viewDidload del view controller 2")
    }
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
        print("Se activo la funcion del didreceivememorywarning del viewController 2 ")
    }
    override func loadView(){
        super.loadView()
        print("Se activo la funcion loadView del viewController 2 ")
    }
    override func viewWillAppear( _ animated:Bool){
        super.viewWillAppear(true)
        print("Se activo la funcion viewWillAppear del viewController 2 ")
    }
    override func viewDidAppear( _ animated:Bool){
        super.viewDidAppear(true)
        print("Se activo la funcion viewDidAppear del viewController 2 ")
    }
    override func viewWillDisappear( _ animated:Bool){
        super.viewWillDisappear(true)
        print("Se activo la funcion viewWillDisappear del viewController 2 ")
    }
    override func viewDidDisappear( _ animated:Bool){
        super.viewDidDisappear(true)
        print("Se activo la funcion viewDidDisappear del viewController 2 ")
    }

}
