//
//  ingredientesInterfaceController.swift
//  creaPizza
//
//  Created by Miguelangel on 12/06/17.
//  Copyright © 2017 Miguelangel. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesInterfaceController: WKInterfaceController {
    
    var valorContext : Pizza!
    var ingredientes = [String : String]()
    var cantidadIngredientes : Int = 0
    
    @IBOutlet var btnVerPedido: WKInterfaceButton!
    
    @IBOutlet var swtJamon: WKInterfaceSwitch!
    @IBOutlet var swtPiña: WKInterfaceSwitch!
    @IBOutlet var swtPepperoni: WKInterfaceSwitch!
    @IBOutlet var swtPavo: WKInterfaceSwitch!
    @IBOutlet var swtSalchicha: WKInterfaceSwitch!
    @IBOutlet var swtAceituna: WKInterfaceSwitch!
    @IBOutlet var swtCebolla: WKInterfaceSwitch!
    @IBOutlet var swtPimiento: WKInterfaceSwitch!

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        
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

    @IBAction func clickSiguiente() {
        let action3 = WKAlertAction(title: "Cancelar", style: .cancel) {}
        
        if 1 ... 5 ~= cantidadIngredientes {
            
            valorContext.ingredientes = ""
            
            for (_, value) in ingredientes {
                valorContext.ingredientes += value
            }
            
            pushController(withName: "DetallePedidoIC", context: valorContext)
        }
        else{
            presentAlert(withTitle: "Alerta", message: "Debe elegir de uno a cinco ingredientes", preferredStyle: .actionSheet, actions: [action3])
        }
    }
    
    func validarSwitch(activo: Bool, key : String){
        if activo{
            ingredientes[key] = "\(key)\n"
            cantidadIngredientes += 1
        }
        else{
            ingredientes.removeValue(forKey: key)
            cantidadIngredientes -= 1
        }
    }
    
    @IBAction func swtJamonActivo(value: Bool){
    
        validarSwitch(activo: value, key: "Jamón")
    }
    
    @IBAction func swtPiñaActivo(value: Bool){
        
        validarSwitch(activo: value, key: "Piña")
    }
    
    @IBAction func swtPepperoniActivo(value: Bool){
        
        validarSwitch(activo: value, key: "Pepperoni")
    }
    
    @IBAction func swtPavoActivo(value: Bool){
        
        validarSwitch(activo: value, key: "Pavo")
    }
    
    @IBAction func swtSalchichaActivo(value: Bool){
        
        validarSwitch(activo: value, key: "Salchicha")
    }
    
    @IBAction func swtAceitunaActivo(value: Bool){
        
        validarSwitch(activo: value, key: "Aceituna")
    }
    
    @IBAction func swtCebollaActivo(value: Bool){
        
        validarSwitch(activo: value, key: "Cebolla")
    }
    
    @IBAction func swtPimientoActivo(value: Bool){
        
        validarSwitch(activo: value, key: "Pimiento")
    }
}
