//
//  ButtonStyleView.swift
//  WelcomeStudentSolution
//
//  Created by Ilyes Djari on 26/10/2023.
//

import SwiftUI

// Custom ButtonStyle for consistent appearance across the app
struct ButtonStyleView: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding() // Padding around the text
            .foregroundColor(.white) // Text color
            .font(.system(size: 18, weight: .bold)) // Font size and weight
            .frame(maxWidth: .infinity) // Takes up all available width
            .background(.orange) // Background color
            .clipShape(RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))) // Rounded corners
    }
}

#Preview {
    Button(
        "Customize this button"
        ,action: { // Button action here
        })
    .buttonStyle(ButtonStyleView())
}
