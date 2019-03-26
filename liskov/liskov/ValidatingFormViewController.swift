//
//  ViewController.swift
//  liskov
//
//  Created by Ruben Hansen-Rojas on 3/25/19.
//  Copyright © 2019 me. All rights reserved.
//

import UIKit

class ValidatingFormViewController: UIViewController
{
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet var commentInputTextField: UITextField!
    
    @IBOutlet var commentErrorLabel: UILabel!
    
    static func create() -> ValidatingFormViewController
    {
        let sb = UIStoryboard(name: "ValidatingForm", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ValidatingFormViewController") as! ValidatingFormViewController
        
        return vc
    }
    
    override func viewDidLoad()
    {
        self.commentErrorLabel.textColor = UIColor.red
        self.commentErrorLabel.text = String()
    }
    @IBAction func onSubmitTapped(_ sender: Any)
    {
        validateComments()
    }
    
    private func validateComments()
    {
    
        guard let commentText = self.commentInputTextField.text else
        {
            self.commentErrorLabel.text = "Cannot be empty."
            return
        }
        
        if (commentText.isEmpty)
        {
            self.commentErrorLabel.text = "Cannot be empty."
            return
        }
        
        self.commentErrorLabel.text = String()
    }
}

