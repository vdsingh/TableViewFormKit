//
//  FormCell.swift
//
//
//  Created by Vikram Singh on 5/14/23.
//
import Foundation
import UIKit
import VikUtilityKit

/// Form cells and all their necessary information to build a form
public enum FormCell: Equatable {
    public static func == (lhs: FormCell, rhs: FormCell) -> Bool {
        return "\(lhs)" == "\(rhs)"
    }
    
    case textFieldCell(
        placeholderText: String,
        text: String?,
        id: FormCellID.TextFieldCellID,
        textFieldDelegate: UITextFieldDelegate,
        delegate: UITextFieldDelegateExtension
    )
    
    case switchCell(
        cellText: String,
        isOn: Bool,
        switchDelegate: CanHandleSwitch?,
        infoDelegate: CanHandleInfoDisplay?
    )
    
    case labelCell(
        cellText: String,
        icon: UIImage? = nil,
        textColor: UIColor = ColorManager.primaryTextColor,
        backgroundColor: UIColor = ColorManager.cellBackgroundColor,
        cellAccessoryType: UITableViewCell.AccessoryType = .none,
        onClick: (() -> Void)? = nil
    )
    
    case errorCell(
        errors: [any FormError]
    )
    
    case timeCell(
        cellText: String,
        date: Date,
        dateFormat: DateFormat,
        timePickerMode: UIDatePicker.Mode,
        id: FormCellID.TimeCellID,
        onClick: ((IndexPath) -> Void)?
    )
    
    case timePickerCell(
        date: Date,
        dateFormat: DateFormat,
        timePickerMode: UIDatePicker.Mode,
        id: FormCellID.TimePickerCellID,
        delegate: UITimePickerDelegate
    )
    
    case daySelectorCell(
        daysSelected: Set<Weekday>,
        delegate: DaySelectorDelegate
    )
    
    case segmentedControlCell(
        firstTitle: String,
        secondTitle: String,
        delegate: SegmentedControlDelegate
    )
    
    case colorPickerCell(delegate: ColorDelegate)
    
    case pickerCell(
        cellText: String,
        indices: [Int],
        tag: FormCellID.PickerCellID,
        delegate: UIPickerViewDelegate,
        dataSource: UIPickerViewDataSource
    )
    
    case logoCell(
        logo: UIImage,
        onClick: (() -> Void)? = nil
    )
}

/// IDs for FormCells that we can use instead of hardcoded strings
public enum FormCellID {
    
    // TextField Cells
    public enum TextFieldCellID {
        case nameTextField
        case locationTextField
        case additionalDetailsTextField
    }
    
    // TimePickerCells
    public enum TimePickerCellID {
        case startDateTimePicker
        case endDateTimePicker
        case lengthTimePicker
    }
    
    // TimeCells
    public enum TimeCellID {
        case startTimeCell
        case endTimeCell
        case lengthTimeCell
    }
    
    // PickerCells need to be Ints since we use tag
    public enum PickerCellID: Int {
        case coursePickerCell = 0
        case lengthPickerCell = 1
    }
}
