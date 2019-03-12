//
//  ViewController.swift
//  openClosed
//
//  Created by Ruben Hansen-Rojas on 3/11/19.
//  Copyright © 2019 me. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var routerTypePickerView: UIPickerView!
    @IBOutlet weak var routerInfoLabel: UILabel!
    
    private var _pickerDelegate: RouterPickerDelegate?
    private var _routerManager = RouterManager()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self._pickerDelegate = RouterPickerDelegate(routers: self._routerManager.managedRouters)
        
        self.routerTypePickerView.dataSource = _pickerDelegate
        self.routerTypePickerView.delegate = _pickerDelegate
    }
    
    @IBAction func onPrintInfoButtonTapped(_ sender: Any)
    {
        // get the router for the selected index
        let selectedIndex = self.routerTypePickerView.selectedRow(inComponent: 0)
        let selectedRouter = self._routerManager.managedRouters[selectedIndex]
        
        routerInfoLabel.text = selectedRouter.getInfo()
    }
}

