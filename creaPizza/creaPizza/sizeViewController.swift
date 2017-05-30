//
//  sizeViewController.swift
//  creaPizza
//
//  Created by Miguelangel on 28/05/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import UIKit

class sizeViewController: UIViewController {

    var tamaño: String!
    
    @IBOutlet weak var btnPequeña: UIButton!
    @IBOutlet weak var btnMediana: UIButton!
    @IBOutlet weak var Grande: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickButton(_ sender: UIButton) {

        tamaño = sender.titleLabel!.text ?? ""
        
        print(tamaño)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newSegue = segue.destination as! doughViewController
        
        newSegue.tamaño = tamaño
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
