//
//  CoffeeShop.swift
//  interfaceSegregation
//
//  Created by Ruben Hansen-Rojas on 4/22/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation

class CoffeeShop: RestaurantProtocol
{
    func serveBreakfast() {
        print("order up: half-caf americano, half pump sugar-free cinnamon dolce, and one splenda.")
    }
    
    func serveLunch() {
        // but we don't serve lunch!
    }
    
    func serveDinner() {
        // we don't serve dinner either!
    }
    
    
}
