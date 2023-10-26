//
//  TextComponent.swift
//  WelcomeStudentSolution
//
//  Created by Ilyes Djari on 26/10/2023.
//

import SwiftUI

// Custom view for text, encapsulates font and frame settings
struct TextComponent: View {
    var text: String
    var size: CGFloat
    var weight: Font.Weight

    // Body of the TextView
    var body: some View {
        Text(text)
            .font(.system(size: size, weight: weight)) // Applying font
        .foregroundStyle(.oxfordBlue) // Text color
        .frame(maxWidth: .infinity, alignment: .leading) // Frame adjustments
    }
}

#Preview {
    TextComponent(
        text: "Nice you can adjust preview text here ;)",
        size: 18,
        weight: .bold)
}
