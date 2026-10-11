//
//  HomeTopRouter.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

import Observation

@MainActor
@Observable
final class HomeTopRouter {
    var path: [HomeTopRoute] = []
    var activeSheet: HomeTopSheet?
    
    func navigateToTodaySchedule() {
        path.append(.todaySchedule)
    }
    func navigateToUpcomingSchedule() {
        path.append(.upComingSchedule)
    }
    
    func navigateToWeeklySchedule() {
        path.append(.weeklySchedule)
    }
    
    func navigateToAddTodaySchedule() {
        activeSheet = .addTodaySchedule
    }

    func navigateToAddCompany() {
        activeSheet = .addCompany
    }

    func navigateToAddEvent() {
        activeSheet = .addEvent
    }

    func navigateToAddSelection() {
        activeSheet = .addSelection
    }

    func navigateToAddToDo() {
        activeSheet = .addToDo
    }

    func navigateToCorporateResearch() {
        path.append(.corporateResearch)
    }

    func navigateToSelectionCountermeasure() {
        path.append(.selectionCountermeasure)
    }

    func navigateToSelectionReflections() {
        path.append(.selectionReflections)
    }

    func navigateToSelfAnalysis() {
        path.append(.selfAnalysis)
    }

    func navigateBack() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }

    func navigateToRoot() {
        path.removeAll()
    }

    func dismissSheet() {
        activeSheet = nil
    }
}
