//
//  Channel.swift
//  singleResponsibility
//
//  Created by Ruben Hansen-Rojas on 3/3/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation

struct Channel
{
    let name: String
    let value: Int
    let description: String
    
    init(name: String, value: Int, description: String)
    {
        self.name = name
        self.value = value
        self.description = description
    }
}
