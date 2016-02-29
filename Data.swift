//
//  Data.swift
//  Pizza
//
//  Created by Sergio Acosta on 27/02/16.
//  Copyright © 2016 Sergio Acosta. All rights reserved.
//

import Foundation

class Data {
    let size : [String] = [
         "chica"
        ,"mediana"
        ,"grande"
    ]
    
    let mass : [String] = [
         "delgada"
        ,"crujiente"
        ,"gruesa"
    ]
    
    let cheese : [String] = [
         "mozzarella"
        ,"cheddar"
        ,"parmesano"
        ,"sin queso"
    ]
    
    let toppings: [String] = [
         "jamón"
        ,"pepperoni"
        ,"pavo"
        ,"salchicha"
        ,"aceituna"
        ,"cebolla"
        ,"pimiento"
        ,"piña"
        ,"anchoa"
        ,"salami"
        ,"chorizo"
        ,"tocino"
        ,"jamón serrano"
        ,"camarón"
        ,"ostión"
        ,"queso de cabra"
        ,"pera"
        ,"callo de hacha"
        ,"alcachofa"
        ,"atún"
    ]
    
    let messages: [String: String] = [
        "confirm" : "Confirmación de tu pizza.",
        "error" : "Debes elegir entre 1 y 5 ingredientes."
    ]
}