//
//  InterfaceController.swift
//  creaPizzaWatch Extension
//
//  Created by Miguelangel on 11/06/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var pckTamaño: WKInterfacePicker!
    @IBOutlet var btnSeleccionar: WKInterfaceButton!
    
    var tamaño : String = "Chica"
    let itemsTamaño : [String] = ["Chica","Mediana","Grande"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        var pickerItemsTamaño: [WKPickerItem] = [WKPickerItem()]
            
        pickerItemsTamaño.remove(at: 0)
        
        for i in itemsTamaño {
            
            let temp = WKPickerItem()
            temp.title = i
            temp.caption = i
            pickerItemsTamaño.append(temp)
        }
        
        pckTamaño.setItems(pickerItemsTamaño)
        
        pckTamaño.setSelectedItemIndex(0)
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        
        
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pckTamañoChange(index : Int){

        tamaño = itemsTamaño[index]
    }
    
    @IBAction func clickSeleccionar() {
        
        let valorContext = Pizza()
        
        valorContext.tamaño = tamaño
        
        pushController(withName: "MasaIC", context: valorContext)
    }

}
