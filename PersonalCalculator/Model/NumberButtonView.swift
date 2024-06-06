//
//  ButtonView.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-02.
//

import SwiftUI

struct NumberButtonView: View {
    
    var buttonLabel: Double
    var buttonBackground: String
    var action: () -> Void
    
    var body: some View {
        Button (action: {self.action()}){
            Text(String(format: "%.0f", buttonLabel))
                .foregroundStyle(.white)
                .font(.system(size: 40, weight: .semibold, design: .rounded))
                .bold()
        }
        .frame(width: 90, height: 90)
        .background(Color(buttonBackground))
        .clipShape(Rectangle())
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    NumberButtonView(buttonLabel: 1, buttonBackground: "ButtonColor", action: {})
}
