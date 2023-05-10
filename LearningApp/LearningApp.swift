//
//  LearningAppApp.swift
//  LearningApp
//
//  Created by Work on 10.05.23.
//

import SwiftUI

@main
struct LearningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
