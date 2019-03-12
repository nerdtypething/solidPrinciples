//
//  RouterPickerDelegate.swift
//  openClosed
//
//  Created by Ruben Hansen-Rojas on 3/11/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation
import UIKit

class RouterPickerDelegate: NSObject, UIPickerViewDelegate, UIPickerViewDataSource
{
    // 1. change to protocol type array
    private var _routers = [Router]()
    
    // 2. change to protocol type array param
    init(routers: [Router])
    {
        self._routers = routers
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return self._routers.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return self._routers[row].routerName
    }
    
}
