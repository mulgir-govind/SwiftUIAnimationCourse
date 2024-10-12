//
//  BreathingAnimatingView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 13/10/24.
//

import SwiftUI

struct BreathingAnimatingView<ContentView: View>: View {
    @State private var moveInOut: Bool = false
    @State private var scaleInOut: Bool = false
    @State private var rotateInOut: Bool = false

    let content: ContentView

    init(@ViewBuilder content: () -> ContentView) {
        self.content = content()
    }

    var body: some View {
        ZStack {
            ZStack {
                content
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? -60 : 0)

                content
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? 60 : 0)
            }

            ZStack {
                content
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? -60 : 0)
                
                content
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? 60 : 0)
            }
            .rotationEffect(.degrees(60))
            
            ZStack {
                content
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? -60 : 0)
                
                content
                    .frame(width: 120, height: 120)
                    .offset(y: moveInOut ? 60 : 0)
            }
            .rotationEffect(.degrees(120))
        }
        .rotationEffect(.degrees(rotateInOut ? 90 : 0))
        .scaleEffect(scaleInOut ? 1 : 1/4)
        .animation(.easeInOut.repeatForever().speed(1/8), value: scaleInOut)
        .onAppear(perform: {
            moveInOut.toggle()
            scaleInOut.toggle()
            rotateInOut.toggle()
        })
    }
}

#Preview {
    VStack(spacing: 130) {
        BreathingAnimatingView {
            ZStack {
                Circle()
                    .fill(
                        RadialGradient(colors: [.green, .red], center: .center, startRadius: 10, endRadius: 50)
                    )
                    .opacity(0.2)

                Circle()
                    .stroke(.green, lineWidth: 1.0)
            }
        }

        BreathingAnimatingView {
            Rectangle()
                .stroke(lineWidth: 2)
        }

        BreathingAnimatingView {
            Text("SwiftUI")
                .foregroundStyle(.red)
        }
    }
}
