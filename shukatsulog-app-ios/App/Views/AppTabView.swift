//
//  AppTabView.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/01.
//

import SwiftUI

struct AppTabView: View {
    @Binding var selectedTab: AppTab

    let homeRootView: HomeTopRootView

    var body: some View {
        VStack(spacing: 0) {
            tabContent
                .frame(
                    maxWidth: .infinity,
                    maxHeight: .infinity
                )

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
            homeRootView

        case .company:
            CompanyTopScreen()

        case .schedule:
            ScheduleTopScreen()

        case .selection:
            SelectionTopScreen()

        case .mypage:
            MyPageTopScreen()
        }
    }
}
