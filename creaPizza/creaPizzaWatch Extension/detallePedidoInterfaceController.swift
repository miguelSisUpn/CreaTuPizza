//
//  detallePedidoInterfaceController.swift
//  creaPizza
//
//  Created by Miguelangel on 12/06/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import WatchKit
import Foundation


class detallePedidoInterfaceController: WKInterfaceController {

    @IBOutlet var lblTamaño: WKInterfaceLabel!
    @IBOutlet var lblMasa: WKInterfaceLabel!
    @IBOutlet var lblQueso: WKInterfaceLabel!
    @IBOutlet var lblIngredientes: WKInterfaceLabel!
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
        let valorContex = context as! Pizza
        
        lblTamaño.setText(valorContex.tamaño)
        lblMasa.setText(valorContex.masa)
        lblQueso.setText(valorContex.queso)
        lblIngredientes.setText(valorContex.ingredientes)
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
