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
        
        VStack(spacing: 0) {
        VStack  {
                Spacer()
                HStack{
                    Spacer()
                    Text(String(format: "%.f", displayText))
                        .foregroundStyle(.black)
                        .font(.system(size: 80, weight: .bold, design: .rounded))
                        .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background {
//                Color.gray.opacity(0.5)
//                    .ignoresSafeArea()
//            }
            
            CalculatorButtons { button in
                buttonTapped(button)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background {
//                Color(hex: 0x8eadcb)
//                    .opacity(0.5)
//                    .ignoresSafeArea()
//            }
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.gray, .white, .black]), startPoint: .top, endPoint: .bottom)
        )
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

extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: opacity
        )
    }
}
