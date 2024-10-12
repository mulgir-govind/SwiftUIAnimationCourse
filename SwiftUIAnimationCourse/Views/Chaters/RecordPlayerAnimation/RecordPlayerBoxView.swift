//
//  RecordPlayerBoxView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 13/10/24.
//

import SwiftUI

struct RecordPlayerBoxView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 345, height: 345)

            Image("woodGrain")
                .resizable()
                .frame(width: 325, height: 325)
                .shadow(color: .white, radius: 3, x: 0, y: 0)
        }
    }
}

#Preview {
    RecordPlayerBoxView()
}
