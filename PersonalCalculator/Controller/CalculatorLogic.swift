//
//  CalculatorLogic.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-04.
//

import Foundation

struct CalculatorLogic {
    
    private var number: Double?
    private var storedNumber: Double?
    private var operation: String?
    private var intermediateCalculation: (n1: Double, calcMethod: String)?

    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    mutating func calculate (_ symbol: String) -> Double? {
        if let n = number {
            switch symbol {
                case "+/-":
                    return n * -1
                case "AC":
                    return 0
                case "%":
                    return n * 0.01
                case "=":
                return performCalculation(n2: n)
                default:
                intermediateCalculation = (n1: n, calcMethod: symbol)
            }
        }
        return nil
    }
    
    func performCalculation(n2 : Double) -> Double? {
        if let n1 = intermediateCalculation?.n1,
           let operation = intermediateCalculation?.calcMethod {
            
            switch operation {
            case "+":
                return n1 + n2
            case "-":
                return n1 - n2
            case "x":
                return n1 * n2
            case "/":
                return n1 / n2
            default:
                fatalError("The operation passed in does not match any of the cases.")
            }
        }
        return nil
        }
    func getResult() -> Double {
        return number ?? 0
    }
}
