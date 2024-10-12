//
//  AnimationChapterModel.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import Foundation

struct AnimationChapterModel: Identifiable, Hashable {
    let id = UUID()
    let type: AnimationChapterTyp
    let title: String
    let description: String
}

extension AnimationChapterModel {
    static func allChapters() -> [AnimationChapterModel] {
        return [
            AnimationChapterModel(
                type: .breathingCircles,
                title: "Breathing circles",
                description: "Breathing animation applied on color circles"),
        ]
    }
}
