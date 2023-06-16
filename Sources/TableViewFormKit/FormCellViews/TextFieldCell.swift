//
//  TextFieldCell.swift
//  Studium
//
//  Created by Vikram Singh on 5/29/20.
//  Copyright © 2020 Vikram Singh. All rights reserved.
//

import UIKit


//TODO: Docstrings
public class TextFieldCell: BasicCell {
    
    //TODO: Docstrings
    public var textFieldID: FormCellID.TextFieldCellID?

    //TODO: Docstrings
    @IBOutlet weak public var textField: UITextField!
    
    //TODO: Docstrings
    public var delegate: UITextFieldDelegateExtension!
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.textField.returnKeyType = UIReturnKeyType.done
        
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: ColorManager.placeholderTextColor // Set your desired color here
        ]
        
        self.textField.attributedPlaceholder = NSAttributedString(string: textField.placeholder ?? "", attributes: attributes)
        self.textField.textColor = ColorManager.primaryTextColor
        
//        self.backgroundColor = StudiumColor.secondaryBackground.uiColor
//        self.textField.textColor = StudiumColor.primaryLabel.uiColor
        
//        self.textField.placeholder
//        self.textField.attributedPlaceholder = NSAttributedString(string: "Enter Text", attributes: [NSAttributedString.Key.foregroundColor: StudiumColor.secondaryLabel.uiColor])

    }

    //TODO: Docstrings
    @IBAction func finishedEditingText(_ sender: UITextField) {
        
    }
    
    //TODO: Docstrings
    @IBAction func textEdited(_ sender: UITextField) {
        if let textFieldID = self.textFieldID {
            delegate.textEdited(sender: sender, textFieldID: textFieldID)
        } else {
            print("$ ERROR: textFieldID not supplied.")
        }
    }
}

extension TextFieldCell: FormCellProtocol {
    public static var id: String = "TextFieldCell"
}
