//
//  WelcomeView.swift
//  WelcomeStudentSolution
//
//  Created by Ilyes Djari on 26/10/2023.
//

import SwiftUI

// The ContentView serves as the main view of the application.
struct WelcomeView: View {
    // The body of the ContentView
    var body: some View {
        // GeometryReader provides dimensions of the container
        GeometryReader { geometry in
            ZStack {
                // A vertical stack for organizing views linearly
                VStack {
                    // Image view for the student
                    Image("student")
                        .resizable() // Allows the image to be resized
                        .scaledToFill() // Fills the frame maintaining the aspect ratio
                        .frame(maxHeight: geometry.size.height * 0.45) // Dynamic frame height
                        .ignoresSafeArea() // Expands to cover the safe area edges
                    // Another vertical stack for text views
                    VStack(spacing: 12) {
                        // Custom TextViews with specific text, size, and weight
                        TextComponent(
                            text: "Welcome to SwiftUI",
                            size: 18,
                            weight: .bold)
                        TextComponent(
                            text: "Let's begin by learning the basics",
                            size: 32,
                            weight: .bold)
                        TextComponent(
                            text: "to start your incredible journey as an iOS Developer.",
                            size: 16,
                            weight: .medium)
                    }
                    .padding(.horizontal, 22) // Horizontal padding
                    .padding(.vertical, 40) // Vertical padding
                    .background(.white) // Background color
                    // A flexible space that expands along the major axis
                    Spacer(minLength: 0)
                    // Button with an arrow
                    Button(action: {
                        // Button action here
                    }) {
                        HStack {
                            Text("I'm ready") // Button text
                            Image(systemName: "arrow.right") // System image for arrow
                        }
                    }
                    .buttonStyle(ButtonStyleView()) // Applying the custom button style
                    .padding(.bottom, 40) // Padding at the bottom
                    .padding(.horizontal, 22) // Horizontal padding
                }
            }
            // Sets the background color to white and ignores safe areas
            .background(.white)
            .ignoresSafeArea(.all)
        }
    }
}

// Preview of the ContentView
#Preview {
    WelcomeView()
}
