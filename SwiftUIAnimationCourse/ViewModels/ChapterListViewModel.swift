//
//  ChapterListViewModel.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import Foundation

class ChapterListViewModel: Observable {
    @Published var chapters: [AnimationChapterModel] = AnimationChapterModel.allChapters()
}
