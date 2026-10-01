//
//  AppTabBar.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/29.
//

import SwiftUI

struct AppTabBarView: View {
    @State private var selectedTab: AppTab = .home

    var body: some View {
        HStack(spacing: 0) {
            tabButton(.home, "house", "ホーム")
            tabButton(.company, "building.2", "企業")
            tabButton(.schedule, "calendar", "予定")
            tabButton(.selection, "checklist", "選考")
            tabButton(.profile, "person", "マイページ")
        }
        .frame(maxWidth: .infinity)
        .background(Color(Asset.Color.TabBar.tabBackground.color))
        .overlay(alignment: .top) {
            Rectangle()
                .frame(height: 0.5)
                .foregroundStyle(Color(Asset.Color.TabBar.tabBorder.color))
        }
    }
    
    private func tabButton( _ tab: AppTab, _ icon: String, _ title: String) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(spacing: 4) {
                Image(systemName: icon)
                    .symbolVariant(selectedTab == tab ? .fill : .none)
                    .font(.system(size: 22))

                Text(title)
                    .font(.caption2)
            }
            .foregroundStyle(selectedTab == tab ? Color(Asset.Color.TabBar.tabActive.color) : Color(Asset.Color.TabBar.tabInactive.color))
            .frame(maxWidth: .infinity)
            .frame(height: 52)
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}

