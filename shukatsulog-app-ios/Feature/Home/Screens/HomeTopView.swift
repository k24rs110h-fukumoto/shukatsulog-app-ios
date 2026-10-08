//
//  HomeTopView.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/25.
//

import SwiftUI

struct HomeTopView: View {
    var body: some View {
        NavigationStack {
            content
                .background(Color(Asset.Color.Background.background.color))
                .safeAreaInset(edge: .top) {
                    AppHeaderView()
                }
        }
    }
    
    private var content: some View {
        ScrollView {
            TodayScheduleListSection()
            
            HomeTopQuickActionButtonSection()
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

