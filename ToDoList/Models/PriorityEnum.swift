//
//  PriorityEnum.swift
//  ToDoList
//
//  Created by Asliddin Mahmudov on 20/11/22.
//

import Foundation
import UIKit

enum PriorityEnum: String {
    case high, medium, low, none
}


extension PriorityEnum {
    
    func setPriorityColor() -> UIColor {
        switch self {
        case .high:
            return .systemRed
        case .medium:
            return .systemOrange
        case .low:
            return .systemGreen
        case .none:
            return .systemGray6
        }
    }
    
}
