//
//  HomeTopRoute.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

enum HomeTopRoute: Hashable {
    case todaySchedule
    case upComingSchedule
    case weeklySchedule
    case corporateResearch
    case selectionCountermeasure
    case selectionReflections
    case selfAnalysis
}

enum HomeTopSheet: String, Identifiable {
    case addTodaySchedule
    case addCompany
    case addEvent
    case addSelection
    case addToDo

    var id: String { rawValue }
}
