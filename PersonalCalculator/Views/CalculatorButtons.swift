//
//  CalculatorButtons.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-02.
//

import SwiftUI

struct CalculatorButtons: View {
    var body: some View {
        
        //This VStack will contain all the buttons
        VStack {
            Spacer()
            //The bottom HStack that contains AC, +/-, %, /
            HStack {
                ExtraButtonView(buttonLabel: "AC", buttonBackground: "ExtraOperation")
                
                ExtraButtonView(buttonLabel: "+/-", buttonBackground: "ExtraOperation")
                
                ExtraButtonView(buttonLabel: "%", buttonBackground: "ExtraOperation")
                
                OperationButtonView(buttonLabel: "/", buttonBackground: "OperationColor")
            }
            //The bottom HStack that contains 7, 8, 9, x
            HStack {
                NumberButtonView(buttonLabel: "7", buttonBackground: "ButtonColor")
                
                NumberButtonView(buttonLabel: "8", buttonBackground: "ButtonColor")
                
                NumberButtonView(buttonLabel: "9", buttonBackground: "ButtonColor")
                
                OperationButtonView(buttonLabel: "x", buttonBackground: "OperationColor")
            }
            //The middle HStack that contains 4, 5, 6, -
            HStack {
                NumberButtonView(buttonLabel: "4", buttonBackground: "ButtonColor")
                
                NumberButtonView(buttonLabel: "5", buttonBackground: "ButtonColor")
                
                NumberButtonView(buttonLabel: "6", buttonBackground: "ButtonColor")
                
                OperationButtonView(buttonLabel: "-", buttonBackground: "OperationColor")
            }
            //The bottom HStack that contains 1, 2, 3, +
            HStack {
                NumberButtonView(buttonLabel: "1", buttonBackground: "ButtonColor")
                
                NumberButtonView(buttonLabel: "2", buttonBackground: "ButtonColor")
                
                NumberButtonView(buttonLabel: "3", buttonBackground: "ButtonColor")
                
                OperationButtonView(buttonLabel: "+", buttonBackground: "OperationColor")
            }
            //The bottom most HStack contains 0, ., =
            HStack {
                ZeroButton(buttonLabel: "0", buttonBackground: "ButtonColor")
                
                NumberButtonView(buttonLabel: ".", buttonBackground: "ButtonColor")
                
                OperationButtonView(buttonLabel: "=", buttonBackground: "OperationColor")
            }
        }.padding()
        
    }
}

#Preview {
    CalculatorButtons()
}
