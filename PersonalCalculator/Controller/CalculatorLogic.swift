//
//  CalculatorLogic.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-04.
//

import Foundation

enum CalculationOperations {
    case add, subtract, multiply, divide, none
}
struct CalculatorLogic {
    var number = "0"
    private var operation: CalculationOperations = .none
    private var numberTapped = 0
    
    mutating func calculate(button: Buttons) {
        switch button {
        case .add, .subtract, .multiply, .divide:
            self.operation = buttonToOperation(button)
            self.numberTapped = Int(self.number) ?? 0
            self.number = "0"
        case .equal:
            let currentValue = self.numberTapped
            let value = Int(self.number) ?? 0
            switch self.operation {
            case .add:
                self.number = "\(currentValue + value)"
            case .subtract:
                self.number = "\(currentValue - value)"
            case .multiply:
                self.number = "\(currentValue * value)"
            case .divide:
                self.number = "\(currentValue / value)"
            case .none:
                break
            }
        case .clear:
            self.number = "0"
        case .negate:
            if self.number.hasPrefix("-") {
                self.number.removeFirst()
            } else {
                self.number = "-\(self.number)"
            }
        case .modulus:
            if let value = Double(self.number) {
                self.number = String(value * 0.01)
            }
        default:
            if self.number == "0" {
                self.number = button.rawValue
            } else {
                self.number += button.rawValue
            }
        }
    }
    
    private func buttonToOperation(_ button: Buttons) -> CalculationOperations {
        switch button {
        case .add:
            return .add
        case .subtract:
            return .subtract
        case .multiply:
            return .multiply
        case .divide:
            return .divide
        default:
            return .none
        }
    }
}
