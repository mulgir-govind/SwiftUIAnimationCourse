//
//  RecordView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 13/10/24.
//

import SwiftUI

struct RecordView: View {
    @Binding var shouldAnimate: Bool
    @Binding var rotationDegree: Double

    var body: some View {
        Image("record")
            .resizable()
            .frame(width: 275, height: 275)
            .shadow(color: .gray, radius: 1, x: 0, y: 0)
            .rotationEffect(.degrees(rotationDegree))
            .animation(.linear(duration: shouldAnimate ? 60 : 0).delay(1.5), value: rotationDegree)
    }
}

#Preview {
    RecordView(shouldAnimate: .constant(true), rotationDegree: .constant(36))
}
