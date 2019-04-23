//
//  TacoTruck.swift
//  interfaceSegregation
//
//  Created by Ruben Hansen-Rojas on 4/22/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation

class TacoTruck: RestaurantProtocol
{
    func serveBreakfast() {
        print("order up: breakfast burrito!")
    }
    
    func serveLunch() {
        print("order up: tacos al pastor!")
    }
    
    func serveDinner() {
        // this truck doesn't serve dinner!
    }
    
    
}
