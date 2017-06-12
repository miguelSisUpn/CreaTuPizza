//
//  quesoInterfaceController.swift
//  creaPizza
//
//  Created by Miguelangel on 12/06/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import WatchKit
import Foundation


class quesoInterfaceController: WKInterfaceController {
    
    @IBOutlet var pckQueso: WKInterfacePicker!
    @IBOutlet var btnSeleccionar: WKInterfaceButton!
    
    var valorContext : Pizza!
    var queso : String = "Mozarela"
    let itemsQueso : [String] = ["Mozarela","Cheddar","Parmesano","Sin Queso"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        var pickerItemsQueso: [WKPickerItem] = [WKPickerItem()]
        
        pickerItemsQueso.remove(at: 0)
        
        for i in itemsQueso {
            
            let temp = WKPickerItem()
            temp.title = i
            temp.caption = i
            pickerItemsQueso.append(temp)
        }
        
        pckQueso.setItems(pickerItemsQueso)
        
        pckQueso.setSelectedItemIndex(0)
        
        valorContext = context as! Pizza
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func pckQuesoChange(index : Int){
        queso = itemsQueso[index]
    }
    
    @IBAction func clickSeleccionar() {
        
        valorContext.queso = queso
        pushController(withName: "IngredientesIC", context: valorContext)
    }

}
