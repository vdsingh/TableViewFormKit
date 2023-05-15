//
//  LabelCell.swift
//  Studium
//
//  Created by Vikram Singh on 5/29/20.
//  Copyright © 2020 Vikram Singh. All rights reserved.
//

import UIKit

//TODO: Docstrings
public class LabelCell: BasicCell {

    //TODO: Docstrings
    @IBOutlet weak public var label: UILabel!
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.label.textColor = ColorManager.primaryTextColor
        self.backgroundColor = ColorManager.secondaryBackgroundColor
    }
    
    
}

extension LabelCell: FormCellProtocol {
    public static var id: String = "LabelCell"
}
