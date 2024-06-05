//
//  ExtraButtonView.swift
//  PersonalCalculator
//
//  Created by Parth Patel on 2024-06-03.
//

import SwiftUI

struct ExtraButtonView: View {
    var buttonLabel: String
    var buttonBackground: String
    var action: () -> Void
    
    var body: some View {
        Button (action: {self.action()}){
            Text(buttonLabel)
                .foregroundStyle(.black)
                .font(.largeTitle)
                .bold()
        }
        .frame(width: 90, height: 90)
        .background(Color(buttonBackground))
        .clipShape(Rectangle())
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    ExtraButtonView(buttonLabel: "AC", buttonBackground: "ExtraOperation", action: {})
}
