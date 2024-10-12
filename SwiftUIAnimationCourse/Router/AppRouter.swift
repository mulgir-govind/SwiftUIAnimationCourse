//
//  AppRouter.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 13/10/24.
//

import SwiftUI

class AppRouter: ObservableObject {
    @Published var path = NavigationPath()

    func navigate(to route: AppRoute) {
        path.append(route)
    }

    func navigateToChapter(_ chapter: AnimationChapterModel) {
        navigate(to: .chapterDetail(chapter)) // Use the existing navigate method
    }

    func navigationBack() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }

    func navigateToRoot() {
        path.removeLast(path.count)
    }
}

extension AppRouter {
    @ViewBuilder
    func destinationView(for route: AppRoute) -> some View {
        switch route {
            case .home:
                HomeView()
            case .chapterDetail(let chapter):
                ChapterViewFactory.createView(for: chapter)
        }
    }
}
