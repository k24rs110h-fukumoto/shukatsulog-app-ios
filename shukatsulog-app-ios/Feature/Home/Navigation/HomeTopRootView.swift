//
//  HomeTopRootView.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

import SwiftUI

struct HomeTopRootView: View {
    @Bindable var router: HomeTopRouter
    let viewModel: HomeTopViewModel

    var body: some View {
        NavigationStack(path: $router.path) {
            HomeTopView(viewModel: viewModel)
                .navigationDestination(for: HomeTopRoute.self) { route in
                    switch route {
                    case .todaySchedule:
                        TodayScheduleScreen()
                        
                    case .upComingSchedule:
                        UpcomingScheduleScreen()
                        
                    case .weeklySchedule:
                        WeeklyScheduleScreen()
                        
                    case .corporateResearch:
                        Text("企業研究")

                    case .selectionCountermeasure:
                        Text("選考対策")

                    case .selectionReflections:
                        Text("振り返り")

                    case .selfAnalysis:
                        Text("自己分析")
                    }
                }
        }
        .sheet(item: $router.activeSheet) { sheet in
            switch sheet {
            case .addTodaySchedule:
                Text("今日の予定追加")
                
            case .addCompany:
                Text("企業を追加")

            case .addEvent:
                Text("予定を追加")

            case .addSelection:
                Text("選考を追加")

            case .addToDo:
                Text("ToDoを追加")
            }
        }
        .environment(router)
    }
}
