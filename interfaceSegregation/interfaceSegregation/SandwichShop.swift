//
//  SandwichShop.swift
//  interfaceSegregation
//
//  Created by Ruben Hansen-Rojas on 4/22/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation

class SandwichShop: RestaurantProtocol
{
    func serveBreakfast() {
        print("order up: egg sandwich and coffee!")
    }
    
    func serveLunch() {
        print("order up: turkey on rye and fries!")
    }
    
    func serveDinner() {
        // this place doesn't serve dinner!
    }
    
    
}
