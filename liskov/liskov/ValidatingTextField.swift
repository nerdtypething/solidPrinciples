//
//  ValidatingControl.swift
//  liskov
//
//  Created by Ruben Hansen-Rojas on 3/25/19.
//  Copyright © 2019 me. All rights reserved.
//

import Foundation
import UIKit

class ValidatingTextField: UITextField
{
    var label = String()
    
    init()
    {
        super.init(frame: CGRect(x: 0, y: 0, width: 100.0, height: 40.0))
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.layer.borderWidth = 1.0
        self.layer.cornerRadius = 8.0
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    // returns error string
    func validate() -> String
    {
        return String()
    }
}

class NameTextField: ValidatingTextField
{
    override init()
    {
        super.init()
        self.label = "Name:"
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override func validate() -> String
    {
        guard let txt = self.text else
        {
            return "Field is required."
        }
        
        
        if (txt.isEmpty)
        {
            return "Field is required."
        }
        
        return String()
    }
}

class PhoneTextField: ValidatingTextField
{
    override init()
    {
        super.init()
        self.label = "Phone:"
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override func validate() -> String
    {
        guard let txt = self.text else
        {
            return "Field is required."
        }
        
        
        if (txt.isEmpty)
        {
            return "Field is required."
        }
        
        return String()
    }
}

class CommentTextField: ValidatingTextField
{
    override init()
    {
        super.init()
        self.label = "Comment:"
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
    }
    
    override func validate() -> String
    {
        return String()
    }
}
