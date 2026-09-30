//
//  QuickActionData.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/30.
//

import SwiftUI

struct QuickActionData {
    static let entryManagement = QuickActionItem(
        title: "エントリー管理",
        image: "text.document",
        description: "応募した企業を一覧で管理",
        color: .blue
    )

    static let companyManagement = QuickActionItem(
        title: "企業管理",
        image: "building",
        description: "気になる企業情報を管理",
        color: .orange
    )

    static let selectionManagement = QuickActionItem(
        title: "選考管理",
        image: "pencil",
        description: "選考状況を記録",
        color: .purple
    )

    static let interviewAndESPreparation = QuickActionItem(
        title: "面接・ES対策",
        image: "person.crop.circle.badge.ellipsis",
        description: "質問・メモ・過去の回答を管理",
        color: .green
    )
}
