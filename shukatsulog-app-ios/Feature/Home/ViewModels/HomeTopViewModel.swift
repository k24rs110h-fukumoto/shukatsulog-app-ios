//
//  HomeTopViewModel.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

import SwiftUI

@MainActor
final class HomeTopViewModel {
    private let router: HomeTopRouter

    init(router: HomeTopRouter) {
        self.router = router
    }

    func didTapAddCompany() {
        router.navigateToAddCompany()
    }

    func didTapAddEvent() {
        router.navigateToAddEvent()
    }

    func didTapAddSelection() {
        router.navigateToAddSelection()
    }

    func didTapAddToDo() {
        router.navigateToAddToDo()
    }

    func didTapCorporateResearch() {
        router.navigateToCorporateResearch()
    }

    func didTapSelectionCountermeasure() {
        router.navigateToSelectionCountermeasure()
    }

    func didTapSelectionReflections() {
        router.navigateToSelectionReflections()
    }

    func didTapSelfAnalysis() {
        router.navigateToSelfAnalysis()
    }
}
