//
//  ContentView.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-02.
//

import SwiftUI

struct Calculator: View {
    
    @State private var displayText: String = ""
    
    var body: some View {
        
        //This VStack will contain the answer label
        VStack{
            Spacer()
            HStack{
                Spacer()
                Text(displayText)
                    .font(.largeTitle)
                    .bold()
                    .padding()
            }
        }
        //A different view file created that has all the buttons to be displayed
        CalculatorButtons { button in
            if button == "AC"{
                self.displayText = ""
            } else {
                self.displayText += button
            }
        }
    }
}

#Preview {
    Calculator()
}
