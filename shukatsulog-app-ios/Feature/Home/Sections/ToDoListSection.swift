//
//  TodoListScreen.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/30.
//

import SwiftUI

struct ToDoListSection: View {
    var body: some View {
        VStack(spacing: 12) {
            toDoListRow(title: "株式会社田中研究所ES提出", limitDate: "今日")
            toDoListRow(title: "株式会社田中研究所ES提出", limitDate: "今日")
            toDoListRow(title: "株式会社田中研究所ES提出", limitDate: "今日")
            toDoListRow(title: "株式会社田中研究所ES提出", limitDate: "今日")
        }
        .padding(.top, 12)
        .padding(.bottom, 12)
        .padding(.horizontal, 16)
        .background(Color(Asset.Color.Background.card.color))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
    private func toDoListRow(title: String, limitDate: String) -> some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "circle")
                    .foregroundStyle(.gray)
                    .font(.system(size: 24, weight: .light))
                
                Text(title)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color(Asset.Color.Text.textPrimary.color))
            }
            
            Spacer()
            
            Text(limitDate)
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}
