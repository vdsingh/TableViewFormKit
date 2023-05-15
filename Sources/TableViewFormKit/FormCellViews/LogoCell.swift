//
//  LogoCell.swift
//  Studium
//
//  Created by Vikram Singh on 8/12/20.
//  Copyright © 2020 Vikram Singh. All rights reserved.
//

import UIKit
import VikUtilityKit

//TODO: Docstrings
public class LogoCell: BasicCell {
    
    /// ImageView for the logo
    @IBOutlet weak public var logoImageView: UIImageView!
    
    /// Label
    @IBOutlet weak public var label: UILabel!
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        self.label.textColor = ColorManager.primaryTextColor
        self.logoImageView.tintColor = ColorManager.primaryAccentColor
    }
    
    /// Sets the logo image
    /// - Parameter systemIcon: The logo image to display
    public func setImage(systemIcon: SystemIcon) {
        logoImageView.image = systemIcon.createImage()
    }
}

extension LogoCell: FormCellProtocol {
    public static var id: String = "LogoCell"
}
