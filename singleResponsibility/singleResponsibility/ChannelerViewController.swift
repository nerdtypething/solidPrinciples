//
//  ViewController.swift
//  singleResponsibility
//
//  Created by Ruben Hansen-Rojas on 3/3/19.
//  Copyright © 2019 me. All rights reserved.
//

import UIKit

class ChannelerViewController: UIViewController
{
    private var _channels = [Channel]()
    
    static func create(channels: [Channel]) -> ChannelerViewController
    {
        let sb = UIStoryboard(name: "Channeler", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ChannelerViewController") as! ChannelerViewController
        
        vc._channels = channels
        
        return vc
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onPrintChannelInfoTapped(_ sender: Any)
    {
        self.printChannelInfo()
    }
    
    func printChannelInfo()
    {
        self._channels.forEach({c in
            print("===================")
            print("channel: \(c.name)")
            print("value: \(c.value)")
            print("description: \(c.description)")
        })
    }
}

