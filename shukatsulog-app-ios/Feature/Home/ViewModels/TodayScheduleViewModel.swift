//
//  TodayScheduleViewModel.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

import SwiftUI

@MainActor
final class TodayScheduleViewModel {
    private let router: HomeTopRouter

    init(router: HomeTopRouter) {
        self.router = router
    }
    
    func didTapTodaySchedule() {
        router.navigateToTodaySchedule()
    }

    func didTapAddTodaySchedule() {
        router.navigateToAddTodaySchedule()
    }

    func didTapBack() {
        router.navigateBack()
    }
}
