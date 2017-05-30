//
//  cheeseViewController.swift
//  creaPizza
//
//  Created by Miguelangel on 29/05/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import UIKit

class cheeseViewController: UIViewController {
    
    var tamaño: String!
    var masa: String!
    var queso: String!

    @IBOutlet weak var btnMozarella: UIButton!
    @IBOutlet weak var btnCheddar: UIButton!
    @IBOutlet weak var btnParmesano: UIButton!
    @IBOutlet weak var btnSinQueso: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickButtonMasa(_ sender: UIButton) {
        queso = sender.titleLabel!.text ?? ""
        print(tamaño + "," + masa + "," + queso)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newSegue = segue.destination as! ingredientsViewController
        
        newSegue.tamaño = tamaño
        newSegue.masa = masa
        newSegue.queso = queso
    
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
