//
//  breathingAnimationAnimation.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 13/10/24.
//

import SwiftUI

struct BreathingAnimationExampleView: View {
    var body: some View {
        ScrollView {
            GeometryReader { proxy in
                VStack(spacing: 120) {
                    // Breathing circles
                    BreathingAnimatingView {
                        ZStack {
                            Circle()
                                .fill(RadialGradient(colors: [.green, .white],
                                                     center: .center,
                                                     startRadius: 10, 
                                                     endRadius: 50))
                                .opacity(0.2)

                            Circle()
                                .stroke(.green, lineWidth: 1.0)
                        }
                    }

                    // Breathing text
                    BreathingAnimatingView {
                        Text("SwiftUI")
                    }

                    // Breathing image
                    BreathingAnimatingView {
                        ZStack {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 2.0)

//                            RoundedRectangle(cornerRadius: 25)
//                                .stroke(lineWidth: 1.0)
                        }
                    }
                }
                .frame(width: proxy.frame(in: .global).width)
            }
        }
        .navigationTitle("Breathing animation")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    BreathingAnimationExampleView()
}
