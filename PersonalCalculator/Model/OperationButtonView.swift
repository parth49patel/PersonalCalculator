//
//  OperationButtonView.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-02.
//

import SwiftUI

struct OperationButtonView: View {
    var buttonLabel: String
    var buttonBackground: String
    
    var body: some View {
        Button (action: {}){
            Text(buttonLabel)
                .foregroundStyle(.white)
                .font(.largeTitle)
                .bold()
        }
        .frame(width: 90, height: 90)
        .background(Color(buttonBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    OperationButtonView(buttonLabel: "=", buttonBackground: "OperationColor")
}
