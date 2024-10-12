//
//  HomeView.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [.purple, .pink],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)

                ScrollView {
                    // Chapter list
                    ChapterListView(viewModel: viewModel.chapterListViewModel)
                }
                .navigationTitle("Animation examples")
            }
        }
    }
}

#Preview {
    HomeView()
}
