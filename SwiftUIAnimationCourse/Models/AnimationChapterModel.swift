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
                type: .breathingAnimation,
                title: "Breathing animation",
                description: "Custom animation simulating the breathing in-out kind of animation"),
            
            AnimationChapterModel(
                type: .recordPlayerAnimation,
                title: "Record player animation",
                description: "This animation demonstrate animating the parts of old record player")
        ]
    }
}
