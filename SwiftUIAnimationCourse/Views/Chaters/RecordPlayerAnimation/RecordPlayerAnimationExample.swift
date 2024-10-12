//
//  RecordPlayerAnimationExample.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 13/10/24.
//

import SwiftUI

struct RecordPlayerAnimationExample: View {
    @State var shouldAnimate: Bool = false
    @State var rotateRecord: Bool = false
    @State var rotateArm: Bool = false
    @State var degree: Double = 0.0

    var body: some View {
        VStack {
            ZStack {
                RadialGradient(colors: [.white, .black], center: .center, startRadius: 10, endRadius: 500)
                    .ignoresSafeArea()

                RecordPlayerBoxView()

                RecordView(shouldAnimate: $shouldAnimate, rotationDegree: $degree)

                RecordArmView(rotateArm: $rotateArm)
                    .offset(x: 80, y: -40)
            }

            Button(action: {
                shouldAnimate.toggle()
                rotateArm.toggle()
                if shouldAnimate {
                    degree = 36000
                    AudioPlayer.play()
                } else {
                    degree = 0
                    AudioPlayer.pause()
                }
            }, label: {
                if rotateRecord {
                    Text("Pause")
                } else {
                    Text("Play")
                }
            })
        }
        .onDisappear(perform: {
            AudioPlayer.pause()
        })
    }
}

#Preview {
    RecordPlayerAnimationExample()
}
