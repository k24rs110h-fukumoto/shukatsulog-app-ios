//
//  HomeTopQuickActionSection.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

import SwiftUI

struct HomeTopQuickActionButtonSection: View {
    let viewModel: HomeTopViewModel

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                QuickActionButton(
                    QuickActionData.addCompany,
                    tapAction: viewModel.didTapAddCompany
                )

                QuickActionButton(
                    QuickActionData.addEvent,
                    tapAction: viewModel.didTapAddEvent
                )

                QuickActionButton(
                    QuickActionData.addSelection,
                    tapAction: viewModel.didTapAddSelection
                )

                QuickActionButton(
                    QuickActionData.addToDo,
                    tapAction: viewModel.didTapAddToDo
                )
            }

            HStack(spacing: 0) {
                QuickActionButton(
                    QuickActionData.companyCorporateResearch,
                    tapAction: viewModel.didTapCorporateResearch
                )

                QuickActionButton(
                    QuickActionData.selectionCountermeasure,
                    tapAction: viewModel.didTapSelectionCountermeasure
                )

                QuickActionButton(
                    QuickActionData.selectionReflections,
                    tapAction: viewModel.didTapSelectionReflections
                )

                QuickActionButton(
                    QuickActionData.selfAnalysis,
                    tapAction: viewModel.didTapSelfAnalysis
                )
            }
        }
        .padding(.vertical, 8)
        .background(Color(Asset.Color.Background.card.color))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

struct QuickActionData {

    static let addCompany = QuickActionItem(
        title: "企業を追加",
        image: "building.2"
    )

    static let addEvent = QuickActionItem(
        title: "予定を追加",
        image: "calendar.badge.plus"
    )

    static let addSelection = QuickActionItem(
        title: "選考を追加",
        image: "checklist"
    )

    static let addToDo = QuickActionItem(
        title: "ToDoを追加",
        image: "checkmark.circle.badge.plus"
    )

    static let companyCorporateResearch = QuickActionItem(
        title: "企業研究",
        image: "person.building.classical"
    )

    static let selectionCountermeasure = QuickActionItem(
        title: "選考対策",
        image: "note.text"
    )

    static let selectionReflections = QuickActionItem(
        title: "振り返り",
        image: "arrow.counterclockwise.circle"
    )

    static let selfAnalysis = QuickActionItem(
        title: "自己分析",
        image: "person.text.rectangle"
    )
}
