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
    
    @IBOutlet weak var channelNameTextField: UITextField!
    @IBOutlet weak var channelValueTextField: UITextField!
    @IBOutlet weak var channelDescriptionTextField: UITextField!
    
    // 1. snippet: cvcCreate
    
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
    
    @IBAction func onAddChannelTapped(_ sender: Any)
    {
        guard let name = channelNameTextField.text, let value = channelValueTextField.text, let desc = channelDescriptionTextField.text else
        {
            return
        }
        
        // note: the conversion of value string to Int via forced unwrap is dangerous and
        // used for demonstration purposes only.
        // don't do this, kids.
        self.addChannel(name: name, value: Int(value)!, description: desc)
        
        // 2. snippet: cvcOnAddChannel
    }
    
    private func addChannel(name: String, value: Int, description: String)
    {
        // note: the conversion of value string to Int via forced unwrap is dangerous and
        // used for demonstration purposes only.
        // don't do this, kids.
        self._channels.append(Channel(name: name, value: value, description: description))
    }
    
    private func printChannelInfo()
    {
        self._channels.forEach({c in
            print("===================")
            print("channel: \(c.name)")
            print("value: \(c.value)")
            print("description: \(c.description)")
        })
        
        // 3. snippet: cvcPrintChannel
    }
}
