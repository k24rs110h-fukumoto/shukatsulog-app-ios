//
//  QuickActionScreen.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/30.
//

import SwiftUI

struct QuickActionButton: View {
    let item: QuickActionItem
    let tapAction: () -> Void
    
    init(_ item: QuickActionItem, tapAction: @escaping () -> Void) {
        self.item = item
        self.tapAction = tapAction
    }
    
    var body: some View {
        Button(action: tapAction) {
            VStack(spacing: 8) {
                Image(systemName: item.image)
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundStyle(Color(Asset.Color.Brand.primary.color))

                Text(item.title)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 8)
        }
        .buttonStyle(.plain)
    }
}
