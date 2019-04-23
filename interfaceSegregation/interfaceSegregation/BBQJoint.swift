//
//  BBQJoint.swift
//  interfaceSegregation
//
//  Created by Ruben Hansen-Rojas on 4/22/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation

class BBQJoint: RestaurantProtocol
{
    func serveBreakfast() {
        // this place doesn't serve breakfast!
    }
    
    func serveLunch() {
        print("order up: pork sandwich and slaw!")
    }
    
    func serveDinner() {
        print("order up: half rack of ribs and sweet tea!")
    }
    
    
}
