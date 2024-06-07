//
//  ContentView.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-02.
//

import SwiftUI

//struct Calculator: View {
//    
//    @State var displayText = "0"
//    @State var calculatorLogic = CalculatorLogic()
//    
//    var body: some View {
//        
//        VStack(spacing: 0) {
//        VStack  {
//                Spacer()
//                HStack{
//                    Spacer()
//                    Text(calculatorLogic.number)
//                        .foregroundStyle(.black)
//                        .font(.system(size: 80, weight: .bold, design: .rounded))
//                        .padding()
//                }
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//
//            CalculatorButtons()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(
//                LinearGradient(gradient: Gradient(colors: [.gray, .white, .black]), startPoint: .top, endPoint: .bottom))
//        }
//    }

struct Calculator: View {
    
    @State var calculatorLogic = CalculatorLogic()
    @State var displayText = "0"
    
    let buttonDisplay: [[Buttons]] = [
        [.clear, .negate, .modulus, .divide],
        [.seven, .eight, .nine, .multiply],
        [.four, .five, .six, .subtract],
        [.one, .two, .three, .add],
        [.zero, .period, .equal]]
    
    var body: some View {
        VStack(spacing: 0) {
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    Text(calculatorLogic.number)
                        .foregroundStyle(.black)
                        .font(.system(size: 80, weight: .bold, design: .rounded))
                        .padding()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            VStack {
                Spacer()
                ForEach(buttonDisplay, id: \.self) { row in
                    HStack(spacing: 5) {
                        ForEach(row, id: \.self) { button in
                            Button(action: {
                                calculatorLogic.calculate(button: button)
                            }, label: {
                                Text(button.rawValue)
                                    .foregroundStyle(button.foregroundColor)
                                    .font(.system(size: 50, weight: .semibold, design: .rounded))
                                    .bold()
                                    .frame(width: self.buttonWidth(button: button), height: 90)
                                    .background(button.backgroundColor)
                                    .clipShape(RoundedRectangle(cornerRadius: 25))
                            }).padding(1)
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: 100)
                }
            }
        }
        .padding()
        .background(LinearGradient(gradient: Gradient(colors: [.gray, .white, .black]), startPoint: .top, endPoint: .bottom))
    }
    
    func buttonWidth(button: Buttons) -> CGFloat {
            if button == .zero {
                return 185
            }
            return 90
        }
}
#Preview {
    Calculator()
}
