//
//  ingredientsViewController.swift
//  creaPizza
//
//  Created by Miguelangel on 29/05/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import UIKit

class ingredientsViewController: UIViewController {

    var tamaño: String!
    var masa: String!
    var queso: String!
    var ingredientes: String! = ""
    var cantidadIngredientes: Int = 0

    @IBOutlet weak var swhJamon: UISwitch!
    @IBOutlet weak var swhPepperoni: UISwitch!
    @IBOutlet weak var swhSalchicha: UISwitch!
    @IBOutlet weak var swhAceituna: UISwitch!
    @IBOutlet weak var swhCebolla: UISwitch!
    @IBOutlet weak var swhPimienta: UISwitch!
    @IBOutlet weak var swhAnchoa: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        ingredientes = ""
        cantidadIngredientes = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newSegue = segue.destination as! orderViewController
        
        if swhJamon.isOn{
            ingredientes! += "Jamón\n"
            cantidadIngredientes += 1
        }
        
        if swhPepperoni.isOn{
            ingredientes! += "Pepperoni\n"
            cantidadIngredientes += 1
        }
        
        if swhSalchicha.isOn{
            ingredientes! += "Salchica\n"
            cantidadIngredientes += 1
        }
        
        if swhAceituna.isOn{
            ingredientes! += "Aceituna\n"
            cantidadIngredientes += 1
        }
        
        if swhCebolla.isOn{
            ingredientes! += "Cebolla\n"
            cantidadIngredientes += 1
        }
        
        if swhPimienta.isOn{
            ingredientes! += "Pimienta\n"
            cantidadIngredientes += 1
        }
        
        if swhAnchoa.isOn{
            ingredientes! += "Anchoa\n"
            cantidadIngredientes += 1
        }
        
        
        newSegue.tamaño = tamaño
        newSegue.masa = masa
        newSegue.queso = queso
        newSegue.ingredientes = ingredientes
        newSegue.cantidadIngredientes = cantidadIngredientes
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
