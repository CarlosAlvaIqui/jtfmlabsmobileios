//
//  ViewController.swift
//  TableViewController
//
//  Created by MAC11 on 2/04/19.
//  Copyright © 2019 Carlos Alvarez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Titu:String?
    
    
    @IBOutlet weak var imagencita: UIImageView!
    @IBOutlet weak var titulo: UILabel!
    @IBOutlet weak var Descripcion: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titulo.text = Titu!
        // Do any additional setup after loading the view.
        switch Titu {
        case "Lamborghini":
            imagencita.image = UIImage(named: "carritos/carro_lamborghini1.jp2")
            Descripcion.text = "Lamborghini es un fabricante italiano de automóviles deportivos fundado en 1963 por el fabricante de tractores Ferruccio Lamborghini y que actualmente pertenece a la filial de Volkswagen"
        case "Kia":
            imagencita.image = UIImage(named: "carritos/carro_kia2.jpg")
            Descripcion.text = "Kia es un fabricante surcoreano de automóviles. Su sede central está ubicada en Yangjae-dong, Seocho-gu, Seúl, Corea del Sur. La compañía, perteneciente ahora al conglomerado de Hyundai Motor Group, en la fase Ford fabricó, como parte del conglomerado ante-crisis de la Ford, modelos bajo licencia para Ford y Mazda."
        case "Ferrari":
            imagencita.image = UIImage(named: "carritos/carro_ferrari3.jpg")
            Descripcion.text = "Ferrari es una compañía de automóviles deportivos con sede en Maranello (Italia). Fue fundada en 1929 por un piloto de autos de competición, Enzo Ferrari, con el nombre de Scuderia Ferrari"
        case "Honda":
            imagencita.image = UIImage(named: "carritos/carro_honda4.jpeg")
            Descripcion.text = "Honda es una empresa de origen japonés que fabrica automóviles, propulsores para vehículos terrestres, acuáticos y aéreos, motocicletas, robots y componentes para la industria automotriz."
        case "Bugatti":
            imagencita.image = UIImage(named: "carritos/carro_bugatti5.jpg")
            Descripcion.text = "Bugatti es una marca de automóviles francesa de gran lujo y competición fundada por Ettore Bugatti, (1881-1947) en el año 1909 en Molsheim, localidad actualmente en Francia y por entonces perteneciente al Imperio alemán. Pertenece al Grupo Volkswagen."
        case "Volkswagen":
            imagencita.image = UIImage(named: "carritos/carro_volkswagen6.jpg")
            Descripcion.text = "Volkswagen es la marca original y más vendida del Grupo Volkswagen, el mayor fabricante de automóviles alemán y el segundo mayor fabricante de automóviles del mundo"
        case "Ford":
            imagencita.image = UIImage(named: "carritos/carro_ford7.jp2")
            Descripcion.text = "La Ford Motor Company, mas conocida como Ford, es una empresa multinacional estadounidense fabricante de automóviles con sede en Dearborn, fue fundada por Henry Ford y se incorporó el 16 de junio de 1903"
        case "Jaguar":
            imagencita.image = UIImage(named: "carritos/carrito_jaguar1.jp2")
            Descripcion.text = "Jaguar Cars es una marca inglesa de automóviles de lujo que es parte de Jaguar Land Rover,2​ un fabricante de automóviles con sede en Whitley, Coventry, West Midlands, Inglaterra. Desde marzo de 2008 la compañía pertenece al grupo industrial y automovilístico indio Tata Motors."
        case "Nissan":
            imagencita.image = UIImage(named: "carritos/carro_nissan9.jpg")
            Descripcion.text = "es un fabricante japonés de automóviles, con base en Yokohama. Su nombre común, Nissan, es un acrónimo de Nippon Sangyo (en japonés significa industria japonesa)"
        case "Chevrolet":
            imagencita.image = UIImage(named: "carritos/carro_chevrolet10.jp2")
            Descripcion.text = "Chevrolet es una marca de automóviles y camiones con sede en Estados Unidos perteneciente al grupo General Motors. Nació de la alianza de Louis Chevrolet y William Crapo Durant el 3 de noviembre de 1911"
        case "tico":
            imagencita.image = UIImage(named: "carritos/carro_tico11.jpeg")
            Descripcion.text = "El Daewoo Tico es un automóvil del segmento A producido por el fabricante surcoreano Daewoo de 1991 a 2002 basado en el Suzuki Alto modelo 1988"
        default:
            "Estas mal mascota"
        }
    }
/*
     Lamborghini :es un fabricante italiano de automóviles deportivos fundado en 1963 por el fabricante de tractores Ferruccio Lamborghini y que actualmente pertenece a la filial de Volkswagen
     //////////////////////////////////////////////////////////////////
     Kia:  es un fabricante surcoreano de automóviles. Su sede central está ubicada en Yangjae-dong, Seocho-gu, Seúl, Corea del Sur. La compañía, perteneciente ahora al conglomerado de Hyundai Motor Group, en la fase Ford fabricó, como parte del conglomerado ante-crisis de la Ford, modelos bajo licencia para Ford y Mazda.2
     //////////////////////////////////////////////////////////////////
     Ferrari :  es una compañía de automóviles deportivos con sede en Maranello (Italia). Fue fundada en 1929 por un piloto de autos de competición, Enzo Ferrari, con el nombre de Scuderia Ferrari
     //////////////////////////////////////////////////////////////////
     Honda : es una empresa de origen japonés que fabrica automóviles, propulsores para vehículos terrestres, acuáticos y aéreos, motocicletas, robots y componentes para la industria automotriz.
     //////////////////////////////////////////////////////////////////
     Bugatti: es una marca de automóviles francesa de gran lujo y competición fundada por Ettore Bugatti, (1881-1947) en el año 1909 en Molsheim, localidad actualmente en Francia y por entonces perteneciente al Imperio alemán. Pertenece al Grupo Volkswagen.
     //////////////////////////////////////////////////////////////////
     Volkswagen :  Volkswagen es la marca original y más vendida del Grupo Volkswagen, el mayor fabricante de automóviles alemán y el segundo mayor fabricante de automóviles del mundo
     //////////////////////////////////////////////////////////////////
     Ford: La Ford Motor Company, mas conocida como Ford, es una empresa multinacional estadounidense fabricante de automóviles con sede en Dearborn, fue fundada por Henry Ford y se incorporó el 16 de junio de 1903.
     //////////////////////////////////////////////////////////////////
     Jaguar: Jaguar Cars es una marca inglesa de automóviles de lujo que es parte de Jaguar Land Rover,2​ un fabricante de automóviles con sede en Whitley, Coventry, West Midlands, Inglaterra. Desde marzo de 2008 la compañía pertenece al grupo industrial y automovilístico indio Tata Motors.
     //////////////////////////////////////////////////////////////////
     Nissan:  es un fabricante japonés de automóviles, con base en Yokohama. Su nombre común, Nissan, es un acrónimo de "Nippon Sangyo" (en japonés significa "industria japonesa").
     //////////////////////////////////////////////////////////////////
     Chevrolet: Chevrolet es una marca de automóviles y camiones con sede en Estados Unidos perteneciente al grupo General Motors. Nació de la alianza de Louis Chevrolet y William Crapo Durant el 3 de noviembre de 1911
     //////////////////////////////////////////////////////////////////
     tico: El Daewoo Tico es un automóvil del segmento A producido por el fabricante surcoreano Daewoo de 1991 a 2002 basado en el Suzuki Alto modelo 1988
     //////////////////////////////////////////////////////////////////
     */
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
