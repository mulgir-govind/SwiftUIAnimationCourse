//
//  ChapterViewFactory.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import SwiftUI

class ChapterViewFactory {
    @ViewBuilder
    static func createView(for chapter: AnimationChapterModel) -> some View {
        switch chapter.type {
            case .breathingCircles:
                Text(chapter.title)
        }
    }
}
