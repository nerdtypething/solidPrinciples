//
//  ChannelInfoer.swift
//  singleResponsibility
//
//  Created by Ruben Hansen-Rojas on 3/3/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation

class ChannelInfoer
{
    // 1. ciprintchannel
    
    func printChannelInfo(channels: [Channel])
    {
        channels.forEach({c in
            print("===================")
            print("channel: \(c.name)")
            print("value: \(c.value)")
            print("description: \(c.description)")
        })
    }
}
