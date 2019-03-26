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
    
    // snippet: lspValidatingVCCreate
    private var _textFields = [ValidatingTextField]()
    private var _errorLabels = [UILabel]()
    
    static func create(textFields: [ValidatingTextField]) -> ValidatingFormViewController
    {
        let sb = UIStoryboard(name: "ValidatingForm", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "ValidatingFormViewController") as! ValidatingFormViewController
        
        vc._textFields = textFields
        
        return vc
    }

    // snippet: lspValidatingVCLayout
    override func viewWillAppear(_ animated: Bool)
    {
        for (index, tf) in _textFields.enumerated()
        {
            let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
            let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 40))
            let errorLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: 40))
            
            containerView.translatesAutoresizingMaskIntoConstraints = false
            titleLabel.translatesAutoresizingMaskIntoConstraints = false
            errorLabel.translatesAutoresizingMaskIntoConstraints = false
            tf.translatesAutoresizingMaskIntoConstraints = false
            
            // add all the subviews to the container view
            containerView.addSubview(titleLabel)
            containerView.addSubview(tf)
            containerView.addSubview(errorLabel)
            
            // add the container view to the stack view
            self.stackView.insertArrangedSubview(containerView, at: self.stackView.arrangedSubviews.count - 1)
            
            // stretch the containerview across the width of the stack view
            NSLayoutConstraint(item: containerView, attribute: .width, relatedBy: .equal, toItem: stackView, attribute: .width, multiplier: 1.0, constant: 0.0).isActive = true
            
            // constrain the title label leading to the container view leading
            NSLayoutConstraint(item: titleLabel, attribute: .leading, relatedBy: .equal, toItem: containerView, attribute: .leading, multiplier: 1.0, constant: 10.0).isActive = true
            
            // constrain the title label's center y to text field's center y
            NSLayoutConstraint(item: titleLabel, attribute: .centerY, relatedBy: .equal, toItem: tf, attribute: .centerY, multiplier: 1.0, constant: 0.0).isActive = true
            
            // add a spacing constraint between the title label and the textfield
            NSLayoutConstraint(item: tf, attribute: .leading, relatedBy: .equal, toItem: titleLabel, attribute: .trailing, multiplier: 1.0, constant: 20.0).isActive = true
            
            var tfVertTopConstant: CGFloat = 20.0
            
            if (index == 0)
            {
                // first element gets extra spacing at the top
                tfVertTopConstant = 50.0
            }
            
            // constrain the text field's top to the container view top
            NSLayoutConstraint(item: tf, attribute: .top, relatedBy: .equal, toItem: containerView, attribute: .top, multiplier: 1.0, constant: tfVertTopConstant).isActive = true
            
            // constrain text field trailing to container view trailing
            NSLayoutConstraint(item: tf, attribute: .trailing, relatedBy: .equal, toItem: containerView, attribute: .trailing, multiplier: 1.0, constant: -2.0).isActive = true

            // add height constraint to text field
            NSLayoutConstraint(item: tf, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 30.0).isActive = true
            
            // add width constraint to text field
            NSLayoutConstraint(item: tf, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 300.0).isActive = true
            
            // constrain error label width to text field width
            NSLayoutConstraint(item: errorLabel, attribute: .width, relatedBy: .equal, toItem: tf, attribute: .width, multiplier: 1.0, constant: 0.0).isActive = true
            
            // constrain error label leading/trailing to text field leading/trailing
            NSLayoutConstraint(item: errorLabel, attribute: .leading, relatedBy: .equal, toItem: tf, attribute: .leading, multiplier: 1.0, constant: 5.0).isActive = true
            NSLayoutConstraint(item: errorLabel, attribute: .trailing, relatedBy: .equal, toItem: tf, attribute: .trailing, multiplier: 1.0, constant: 0.0).isActive = true
            
            // add vertical spacing between text field and error label
            NSLayoutConstraint(item: errorLabel, attribute: .top, relatedBy: .equal, toItem: tf, attribute: .bottom, multiplier: 1.0, constant: 5.0).isActive = true
            
            var errLabelVertConstant: CGFloat = 10.0
            
            if (index == _textFields.count - 1)
            {
                // end of the line. extra spacing between the last
                // element and submit button
                errLabelVertConstant = 50.0
            }
            
            // add vertical spacing between error label and container bottom
            NSLayoutConstraint(item: containerView, attribute: .bottom, relatedBy: .equal, toItem: errorLabel, attribute: .bottom, multiplier: 1.0, constant: errLabelVertConstant).isActive = true
            
            errorLabel.textColor = UIColor.red
            titleLabel.text = tf.label
            
            self._errorLabels.append(errorLabel)
        }
        
        super.viewWillAppear(animated)
    }

    @IBAction func onSubmitTapped(_ sender: Any)
    {
        // snippet: lspValidatingVCValidate
        for (index, tf) in _textFields.enumerated()
        {
            self._errorLabels[index].text = tf.validate()
        }
    }
}

