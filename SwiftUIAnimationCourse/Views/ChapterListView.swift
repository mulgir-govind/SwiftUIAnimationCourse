//
//  ChapterListView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import SwiftUI

struct ChapterListView: View {
    let viewModel: ChapterListViewModel
    let onChapterSelected: (AnimationChapterModel) -> Void
    var body: some View {
        LazyVStack(spacing: 10) {
            ForEach(viewModel.chapters) { chapter in
                ChapterCardView(chapter: chapter, onTap: {
                    onChapterSelected(chapter)
                })
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    ChapterListView(
        viewModel: ChapterListViewModel()) { chapter in
            print("Selected chapter: \(chapter.title)")
        }
}
