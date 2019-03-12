//
//  Router.swift
//  openClosed
//
//  Created by Ruben Hansen-Rojas on 3/11/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation

class Router
{
    var routerName: String
    var routerType: RouterType
    
    init(type: RouterType, name: String)
    {
        self.routerType = type
        self.routerName = name
    }
    
    func getInfo() -> String
    {
        switch (routerType)
        {
        case .Basic:
            return "I'm basic. I enjoy pumpkin spice lattes."
        case .DualBand:
            return "I'm available in 2.5 GHz or 5.0 GHz."
        default:
            return "Who knows?!"
        }
    }
}
