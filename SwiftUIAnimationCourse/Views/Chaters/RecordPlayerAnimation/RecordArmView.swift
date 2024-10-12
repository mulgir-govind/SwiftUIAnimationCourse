//
//  RecordArmView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 13/10/24.
//

import SwiftUI

struct RecordArmView: View {
    @Binding var rotateArm: Bool
    
    var body: some View {
        Image("playerArm")
            .resizable()
            .frame(width: 150, height: 150)
            .aspectRatio(contentMode: .fit)
            .rotationEffect(.degrees(-35), anchor: .topTrailing)
            .rotationEffect(.degrees(rotateArm ? 8 : 0), anchor: .topTrailing)
            .animation(.linear(duration: 2.0), value: rotateArm)
    }
}

#Preview {
    RecordArmView(rotateArm: .constant(true))
}
