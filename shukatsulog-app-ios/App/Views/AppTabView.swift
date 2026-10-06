//
//  AppTabView.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/01.
//

import SwiftUI

struct AppTabView: View {
    @State private var selectedTab: AppTab = .home

    var body: some View {
        VStack(spacing: 0) {
            tabContent
                .frame(maxWidth: .infinity, maxHeight: .infinity)

            TabBarView(
                tabs: AppTab.allCases,
                selectedTab: $selectedTab
            )
        }
    }

    @ViewBuilder
    private var tabContent: some View {
        switch selectedTab {
        case .home:
            HomeTopView()

        case .company:
            HomeTopView()

        case .schedule:
            HomeTopView()

        case .selection:
            HomeTopView()

        case .profile:
            HomeTopView()
        }
    }
}
