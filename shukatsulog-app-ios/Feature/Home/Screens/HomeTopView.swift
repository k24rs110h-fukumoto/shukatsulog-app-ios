//
//  HomeTopView.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/25.
//

import SwiftUI

struct HomeTopView: View {

    let viewModel: HomeTopViewModel

    var body: some View {
        content
            .background(Color(Asset.Color.Background.background.color))
            .safeAreaInset(edge: .top) {
                AppHeaderView()
            }
    }

    private var content: some View {
        ScrollView {
            TodayScheduleListSection()

            HomeTopQuickActionButtonSection(viewModel: viewModel)
            .padding(.top, 8)

            UpcomingScheduleListSection()
                .padding(.top, 8)

            ToDoListSection()
                .padding(.top, 8)
                .padding(.bottom, 8)
        }
        .padding(.horizontal, 8)
        .scrollIndicators(.hidden)
    }
}
