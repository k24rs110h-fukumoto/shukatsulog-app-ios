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
                    .foregroundStyle(item.color)

                Text(item.title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.primary)
                    .multilineTextAlignment(.center)

                Text(item.description)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical, 16)
            .padding(.horizontal, 10)
            .background(item.color.opacity(0.05))
            .clipShape(RoundedRectangle(cornerRadius: 14))
        }
        .buttonStyle(.plain)
    }
}
