//
//  orderViewController.swift
//  creaPizza
//
//  Created by Miguelangel on 29/05/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import UIKit

class orderViewController: UIViewController {
    
    var tamaño: String!
    var masa: String!
    var queso: String!
    var ingredientes: String!
    var cantidadIngredientes: Int! = 0
    
    @IBOutlet weak var btnConfirmar: UIButton!
    @IBOutlet weak var lblTamaño: UILabel!
    @IBOutlet weak var lblMasa: UILabel!
    @IBOutlet weak var lblQueso: UILabel!
    @IBOutlet weak var lblIngredientes: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        lblTamaño.text = tamaño
        lblMasa.text = masa
        lblQueso.text = queso
        lblIngredientes.text = ingredientes
        
        lblIngredientes.sizeToFit()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if 1 ... 5 ~= cantidadIngredientes {
            return true
        }
        else {
            
            let alert = UIAlertController(title: "Atención", message: "Se permite de 1 a 5 ingredientes", preferredStyle: .actionSheet)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: {( action : UIAlertAction!) in alert.dismiss(animated: true, completion: nil)}))
            
            self.present(alert, animated: true, completion: nil)
            
            return false
        }
        
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
