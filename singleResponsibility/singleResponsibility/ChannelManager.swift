//
//  ChannelManager.swift
//  singleResponsibility
//
//  Created by Ruben Hansen-Rojas on 3/3/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation

class ChannelManager
{
    private var _channels: [String: Channel] = [:]
    
    // 3. snippet: cminit

    init(channels: [Channel])
    {
        channels.forEach({c in
            self.addChannel(name: c.name, value: c.value, description: c.description)
        })
    }
    
    // 2. snippet: cmgetchannel
    
    func getChannels() -> [Channel]
    {
        return Array(_channels.values)
    }
    
    // 1. snippet: cmaddchannel

    func addChannel(name: String, value: Int, description: String)
    {
        let channelExists = _channels.contains(where: { (key, value) -> Bool in
            return key == name
        })
        
        if (!channelExists)
        {
            let newChannel = Channel(name: name, value: value, description: description)
            _channels[name] = newChannel
        }
    }
}
