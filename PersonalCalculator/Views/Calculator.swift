//
//  ContentView.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-02.
//

import SwiftUI

struct Calculator: View {
    
    @State private var displayText: Double = 0
    @State private var isFinishedTypingNumber: Bool = true
    @State private var calculatorLogic = CalculatorLogic()
    
    var body: some View {
        
        //This VStack will contain the answer label
        VStack{
            Spacer()
            HStack{
                Spacer()
                Text(String(format: "%.f", displayText))
                    .font(.largeTitle)
                    .bold()
                    .padding()
            }
        }
        CalculatorButtons { button in
            buttonTapped(button)
        }
    }
    private func buttonTapped(_ button: String) {
        if let numValue = Double(button) {
            if isFinishedTypingNumber {
                displayText = numValue
                isFinishedTypingNumber = false
            } else {
                if button == "." {
                    let isInt = floor(displayText) == displayText
                    if !isInt {
                        return
                    }
                }
                displayText = displayText * 10 + numValue
            }
        } else {
            operationButtonPressed(button)
        }
    }
    private func operationButtonPressed(_ operation: String) {
        isFinishedTypingNumber = true
        calculatorLogic.setNumber(displayText)
        if let result = calculatorLogic.calculate(operation) {
            displayText = result
        }
        
    }
}
#Preview {
    Calculator()
}
