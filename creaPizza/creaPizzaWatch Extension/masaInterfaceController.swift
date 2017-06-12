//
//  masaInterfaceController.swift
//  creaPizza
//
//  Created by Miguelangel on 11/06/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import WatchKit
import Foundation


class masaInterfaceController: WKInterfaceController {

    @IBOutlet var pckMasa: WKInterfacePicker!
    @IBOutlet var btnSeleccionar: WKInterfaceButton!
    
    var valorContext : Pizza!
    var masa : String = "Delgada"
    let itemsMasa : [String] = ["Delgada","Crujiente","Gruesa"]
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        var pickerItemsMasa: [WKPickerItem] = [WKPickerItem()]
        
        pickerItemsMasa.remove(at: 0)
        
        for i in itemsMasa {
            
            let temp = WKPickerItem()
            temp.title = i
            temp.caption = i
            pickerItemsMasa.append(temp)
        }
        
        pckMasa.setItems(pickerItemsMasa)
        
        pckMasa.setSelectedItemIndex(0)
        
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
    
    @IBAction func pckMasaChange(index : Int){
        
        masa = itemsMasa[index]
    }
    
    @IBAction func clickSeleccionar() {
        
        valorContext.masa = masa
        pushController(withName: "QuesoIC", context: valorContext)
    }

}
