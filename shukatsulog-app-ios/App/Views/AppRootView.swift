//
//  AppRoute.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/07.
//

import SwiftUI

struct AppRootView: View {
    @State private var appRouter = AppRouter()
    @State private var homeRouter: HomeTopRouter
    @State private var homeTopViewModel: HomeTopViewModel

    init() {
        let router = HomeTopRouter()

        _homeRouter = State(initialValue: router)

        _homeTopViewModel = State(
            initialValue: HomeTopViewModel(router: router)
        )
    }

    var body: some View {
        AppTabView(
            selectedTab: $appRouter.selectedTab,
            homeRootView: HomeTopRootView(
                router: homeRouter,
                viewModel: homeTopViewModel
            )
        )
        .sheet(item: $appRouter.activeSheet) { sheet in
            sheetContent(for: sheet)
        }
        .fullScreenCover(item: $appRouter.activeFullScreen) { screen in
            fullScreenContent(for: screen)
        }
    }

    @ViewBuilder
    private func sheetContent(for sheet: AppSheet) -> some View {
        switch sheet {
        case .quickEntry:
            Text("クイック登録")
        }
    }

    @ViewBuilder
    private func fullScreenContent(
        for screen: AppFullScreen
    ) -> some View {
        switch screen {
        case .signIn:
            Text("ログイン")
        }
    }
}
