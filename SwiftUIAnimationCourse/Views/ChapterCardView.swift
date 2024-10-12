//
//  ChapterCardView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import SwiftUI

struct ChapterCardView: View {
    let chapter: AnimationChapterModel

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(chapter.title)
                    .font(.headline)
                    .fontWeight(.bold)

                Spacer()

                Button(action: {}) {
                    Image(systemName: "arrow.right")
                        .foregroundColor(.blue)
                        .padding(8)
                        .background(Circle().fill(Color.white))
                }
            }

            Text(chapter.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    ChapterCardView(chapter: AnimationChapterModel.allChapters().first!)
}
