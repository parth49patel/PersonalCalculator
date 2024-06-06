//
//  OperationButtonView.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-02.
//

import SwiftUI

struct OperationButtonView: View {
    var buttonLabel: String
    var buttonLabelColor: Color
    var buttonBackground: String
    var action: () -> Void
    
    var body: some View {
        Button (action: {self.action()}){
            Text(buttonLabel)
                .foregroundStyle(buttonLabelColor)
                .font(.system(size: 40, weight: .semibold, design: .rounded))
                .bold()
        }
        .frame(width: 90, height: 90)
        .background(Color(buttonBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    OperationButtonView(buttonLabel: "=", buttonLabelColor: .orange, buttonBackground: "OperationColor", action: {})
}
