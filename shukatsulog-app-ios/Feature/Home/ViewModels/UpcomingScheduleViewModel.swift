//
//  UpcomingScheduleViewModel.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

import SwiftUI

@MainActor
final class UpcomingScheduleViewModel {
    private let router: HomeTopRouter
    
    init(router: HomeTopRouter) {
        self.router = router
    }
    
    func didTapUpcomingSchedule() {
        router.navigateToUpcomingSchedule()
    }
}
