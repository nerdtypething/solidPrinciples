//
//  RouterManager.swift
//  openClosed
//
//  Created by Ruben Hansen-Rojas on 3/11/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation

class RouterManager
{
    // 1: change to protocol-type array
    var managedRouters: [Router]
    
    init()
    {
        self.managedRouters = [Router(type: .Basic, name: "Standard Router"),
                               Router(type: .DualBand, name: "Dually")]
        
        // 2: ocRouterManagerCollection
    }
}
