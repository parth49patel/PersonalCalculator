//
//  Buttons.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-07.
//

import Foundation
import SwiftUI

enum Buttons: String {
    case one = "1"
    case two = "2"
    case three = "3"
    case four = "4"
    case five = "5"
    case six = "6"
    case seven = "7"
    case eight = "8"
    case nine = "9"
    case zero = "0"
    case period = "."
    case add = "+"
    case subtract = "-"
    case multiply = "x"
    case divide = "/"
    case modulus = "%"
    case negate = "+/-"
    case clear = "AC"
    case equal = "="
    
    var backgroundColor: Color {
        switch self {
        case .equal, .add, .subtract, .multiply, .divide:
            return Color("OperationColor")
        case .modulus, .negate, .clear:
            return Color("ExtraOperation")
        default:
            return Color("ButtonColor")
        }
    }
    
    var foregroundColor: Color {
        switch self {
        case .modulus, .negate, .clear:
            return .black
        default:
            return .white
        }
    }
}
