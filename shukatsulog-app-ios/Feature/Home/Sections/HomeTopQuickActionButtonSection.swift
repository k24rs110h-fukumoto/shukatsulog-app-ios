//
//  HomeTopQuickActionSection.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

import SwiftUI

struct HomeTopQuickActionSection: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                QuickActionButton(QuickActionData.entryManagement, tapAction: {})
                QuickActionButton(QuickActionData.companyManagement, tapAction: {})
                QuickActionButton(QuickActionData.selectionManagement, tapAction: {})
                QuickActionButton(QuickActionData.interviewAndESPreparation, tapAction: {})
            }
            HStack(spacing: 0) {
                QuickActionButton(QuickActionData.entryManagement, tapAction: {})
                QuickActionButton(QuickActionData.companyManagement, tapAction: {})
                QuickActionButton(QuickActionData.selectionManagement, tapAction: {})
                QuickActionButton(QuickActionData.interviewAndESPreparation, tapAction: {})
            }
        }
        .padding(.vertical, 8)
        .background(Color(Asset.Color.Background.card.color))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

struct QuickActionData {
    static let entryManagement = QuickActionItem(
        title: "エントリー管理",
        image: "text.document"
    )
    
    static let companyManagement = QuickActionItem(
        title: "企業管理",
        image: "building"
    )
    
    static let selectionManagement = QuickActionItem(
        title: "選考管理",
        image: "pencil"
    )
    
    static let interviewAndESPreparation = QuickActionItem(
        title: "面接・ES対策",
        image: "person.crop.circle.badge.ellipsis"
    )
}
