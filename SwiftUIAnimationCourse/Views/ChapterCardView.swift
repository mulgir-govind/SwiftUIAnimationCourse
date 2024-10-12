//
//  ChapterCardView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import SwiftUI

struct ChapterCardView: View {
    let chapter: AnimationChapterModel
    let onTap: () -> Void

    var body: some View {
        Button(action: onTap, label: {
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text(chapter.title)
                        .font(.headline)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button(action: onTap) {
                        Image(systemName: "arrow.right")
                            .foregroundColor(.blue)
                            .padding(8)
                            .background(Circle().fill(Color.white))
                            .shadow(radius: 4)
                    }
                }
                
                Text(chapter.description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        })
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 2)
    }
}

#Preview {
    ChapterCardView(
        chapter: AnimationChapterModel.allChapters().first!) {
            print("Chapter card view tapped")
        }
}
