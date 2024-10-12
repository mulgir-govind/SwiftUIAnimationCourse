//
//  HomeView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject private var router: AppRouter
    @State private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack(path: $router.path) {
            ZStack {
                LinearGradient(
                    colors: [.purple, .pink],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)

                ScrollView {
                    // Chapter list
                    ChapterListView(viewModel: viewModel.chapterListViewModel) { chapter in
                        router.navigateToChapter(chapter)
                    }
                }
            }
            .navigationTitle("Animation examples")
            .navigationDestination(for: AppRoute.self) { route in
                router.destinationView(for: route)
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(AppRouter())
}
