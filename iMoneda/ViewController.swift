//
//  ViewController.swift
//  iMoneda
//
//  Created by Máster Móviles on 22/10/2019.
//  Copyright © 2019 Máster Móviles. All rights reserved.
//

import UIKit

enum Tirada {
    case cara, cruz
}

class Moneda {
    var t : Tirada
    init(t:Tirada) {
        self.t = t
    }
    func lanzar() -> Tirada {
        return t
    }
}

class ViewController: UIViewController {
    var mon : Moneda
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        <#code#>
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func button(_ sender: Any) {
        var res = self.mon.lanzar()
        if res == Tirada.cara {
        self.label.text = "Cara"
        }
        else {
            self.label.text = "Cruz"
        }
    }
    

}

