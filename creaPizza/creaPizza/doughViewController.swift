//
//  doughViewController.swift
//  creaPizza
//
//  Created by Miguelangel on 28/05/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import UIKit

class doughViewController: UIViewController {
    
    var tamaño: String!
    var masa: String!
    
    @IBOutlet weak var btnDelgada: UIButton!
    @IBOutlet weak var Crujiente: UIButton!
    @IBOutlet weak var btnGruesa: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickButtonMasa(_ sender: UIButton) {
        masa = sender.titleLabel!.text ?? ""
        print(tamaño + "," + masa)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newSegue = segue.destination as! cheeseViewController
        
        newSegue.tamaño = tamaño
        newSegue.masa = masa
    
    }
    
    
/*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let newSegue = segue.destination as! cheeseViewController
        newSegue.tamaño = tamaño
        newSegue.masa = masa
    }
*/
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
