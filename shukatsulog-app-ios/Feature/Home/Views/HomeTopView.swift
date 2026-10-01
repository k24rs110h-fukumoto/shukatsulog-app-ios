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
            TodayTaskScreen()
            
            UpcomingScheduleScreen()
            
            ToDoListScreen()
            
            LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], spacing: 8) {
                QuickActionButton(QuickActionData.entryManagement, tapAction: {})
                QuickActionButton(QuickActionData.companyManagement, tapAction: {})
                QuickActionButton(QuickActionData.selectionManagement, tapAction: {})
                QuickActionButton(QuickActionData.interviewAndESPreparation, tapAction: {})
            }
        }
    }
    
    
}

