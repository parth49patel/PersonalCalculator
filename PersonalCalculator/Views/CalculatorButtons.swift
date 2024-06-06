//
//  CalculatorButtons.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-02.
//

import SwiftUI

struct CalculatorButtons: View {
    
    let buttonTapped: (String) -> Void

    var body: some View {
        
        //This VStack contains all the buttons
        VStack {
            
            Spacer()
            //The bottom HStack that contains AC, +/-, %, /
            HStack {
                OperationButtonView(buttonLabel: "AC", buttonLabelColor: .black, buttonBackground: "ExtraOperation", action: {self.buttonTapped("AC")})
                
                OperationButtonView(buttonLabel: "+/-", buttonLabelColor: .black, buttonBackground: "ExtraOperation", action: {self.buttonTapped("+/-")})
                
                OperationButtonView(buttonLabel: "%", buttonLabelColor: .black, buttonBackground: "ExtraOperation", action: {self.buttonTapped("%")})
                
                OperationButtonView(buttonLabel: "/", buttonLabelColor: .white, buttonBackground: "OperationColor", action: {self.buttonTapped("/")})
            }
            //The top HStack that contains 7, 8, 9, x
            HStack {
                NumberButtonView(buttonLabel: 7, buttonBackground: "ButtonColor", action: {self.buttonTapped("7")})
                
                NumberButtonView(buttonLabel: 8, buttonBackground: "ButtonColor", action: {self.buttonTapped("8")})
                
                NumberButtonView(buttonLabel: 9, buttonBackground: "ButtonColor", action: {self.buttonTapped("9")})
                
                OperationButtonView(buttonLabel: "x", buttonLabelColor: .white, buttonBackground: "OperationColor", action: {self.buttonTapped("x")})
            }
            //The middle HStack that contains 4, 5, 6, -
            HStack {
                NumberButtonView(buttonLabel: 4, buttonBackground: "ButtonColor", action: {self.buttonTapped("4")})
                
                NumberButtonView(buttonLabel: 5, buttonBackground: "ButtonColor", action: {self.buttonTapped("5")})
                
                NumberButtonView(buttonLabel: 6, buttonBackground: "ButtonColor", action: {self.buttonTapped("6")})
                
                OperationButtonView(buttonLabel: "-", buttonLabelColor: .white, buttonBackground: "OperationColor", action: {self.buttonTapped("-")})
            }
            //The bottom HStack that contains 1, 2, 3, +
            HStack {
                NumberButtonView(buttonLabel: 1, buttonBackground: "ButtonColor", action: {self.buttonTapped("1")})
                
                NumberButtonView(buttonLabel: 2, buttonBackground: "ButtonColor", action: {self.buttonTapped("2")})
                
                NumberButtonView(buttonLabel: 3, buttonBackground: "ButtonColor", action: {self.buttonTapped("3")})
                
                OperationButtonView(buttonLabel: "+", buttonLabelColor: .white, buttonBackground: "OperationColor", action: {self.buttonTapped("+")})
            }
            //The bottom most HStack contains 0, ., =
            HStack {
                ZeroButton(buttonLabel: 0, buttonBackground: "ButtonColor", action: {self.buttonTapped("0")})
                
                OperationButtonView(buttonLabel: ".", buttonLabelColor: .white, buttonBackground: "ButtonColor", action: {self.buttonTapped(".")})
                
                OperationButtonView(buttonLabel: "=", buttonLabelColor: .white, buttonBackground: "OperationColor", action: {self.buttonTapped("=")})
            }
        }.padding()
    }
}

#Preview {
    CalculatorButtons { button in
    print(button)}
}
