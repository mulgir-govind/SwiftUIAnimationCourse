//
//  SwiftUIAnimationCourseApp.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 12/10/24.
//

import SwiftUI

@main
struct SwiftUIAnimationCourseApp: App {
    @State private var appRouter = AppRouter()
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(appRouter)
        }
    }
}
