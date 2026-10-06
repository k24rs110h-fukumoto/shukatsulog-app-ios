//
//  AppTab.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/29.
//

enum AppTab: CaseIterable, Hashable {
    case home
    case company
    case schedule
    case selection
    case profile

    var title: String {
        switch self {
        case .home: return "ホーム"
        case .company: return "企業"
        case .schedule: return "予定"
        case .selection: return "選考"
        case .profile: return "マイページ"
        }
    }

    var icon: String {
        switch self {
        case .home: return "house"
        case .company: return "building.2"
        case .schedule: return "calendar"
        case .selection: return "checklist"
        case .profile: return "person"
        }
    }
}
