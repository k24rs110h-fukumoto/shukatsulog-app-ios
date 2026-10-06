//
//  TabBarView.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/29.
//

import SwiftUI

struct TabBarView: View {
    let tabs: [AppTab]
    @Binding var selectedTab: AppTab

    var body: some View {
        HStack {
            ForEach(tabs, id: \.self) { tab in
                tabButton(tab)
            }
        }
        .frame(maxWidth: .infinity)
        .background(Color(Asset.Color.TabBar.tabBackground.color))
        .overlay(alignment: .top) {
            Rectangle()
                .frame(height: 0.5)
                .foregroundStyle(Color(Asset.Color.TabBar.tabBorder.color))
        }
    }

    private func tabButton(_ tab: AppTab) -> some View {
        Button {
            selectedTab = tab
        } label: {
            VStack(spacing: 4) {
                Image(systemName: tab.icon)
                    .symbolVariant(selectedTab == tab ? .fill : .none)
                    .font(.system(size: 22))

                Text(tab.title)
                    .font(.caption2)
            }
            .foregroundStyle(
                selectedTab == tab
                    ? Color(Asset.Color.TabBar.tabActive.color)
                    : Color(Asset.Color.TabBar.tabInactive.color)
            )
            .frame(maxWidth: .infinity)
            .frame(height: 52)
            .contentShape(Rectangle())
        }
        .buttonStyle(.plain)
    }
}
