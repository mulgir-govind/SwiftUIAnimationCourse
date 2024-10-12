//
//  ChapterListView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import SwiftUI

struct ChapterListView: View {
    let viewModel: ChapterListViewModel
    var body: some View {
        LazyVStack(spacing: 10) {
            ForEach(viewModel.chapters) { chapter in
                NavigationLink(value: chapter) {
                    ChapterCardView(chapter: chapter)
                        .padding(.horizontal)
                }
            }
        }
        .navigationDestination(for: AnimationChapterModel.self) { chapter in
            ChapterViewFactory.createView(for: chapter)
        }
    }
}

#Preview {
    ChapterListView(viewModel: ChapterListViewModel())
}
