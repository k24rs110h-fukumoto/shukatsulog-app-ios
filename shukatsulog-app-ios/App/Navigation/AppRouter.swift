//
//  AppRouter.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/07.
//

import Observation

@MainActor
@Observable
final class AppRouter {
    var selectedTab: AppTab = .home
    var activeSheet: AppSheet?
    var activeFullScreen: AppFullScreen?

    func selectTab(_ tab: AppTab) {
        selectedTab = tab
    }

    func presentSheet(_ sheet: AppSheet) {
        activeSheet = sheet
    }

    func dismissSheet() {
        activeSheet = nil
    }

    func presentFullScreen(_ screen: AppFullScreen) {
        activeFullScreen = screen
    }

    func dismissFullScreen() {
        activeFullScreen = nil
    }
}
