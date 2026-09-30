//
//  TodoListScreen.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/30.
//

import SwiftUI

struct ToDoListScreen: View {
    var body: some View {
        VStack {
            toDoListRow(title: "株式会社田中研究所ES提出", limitDate: "今日")
            toDoListRow(title: "株式会社田中研究所ES提出", limitDate: "今日")
            toDoListRow(title: "株式会社田中研究所ES提出", limitDate: "今日")
            toDoListRow(title: "株式会社田中研究所ES提出", limitDate: "今日")
        }
        .padding(.horizontal, 16)
        .background(Color(Asset.Color.Background.card.color))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 16)
        .padding(.vertical, 8)
    }
    
    private func toDoListRow(title: String, limitDate: String) -> some View {
        HStack {
            Circle()
                .foregroundStyle(.gray)
                .frame(width: 24, height: 24)
            
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
            
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
        .padding(.vertical, 12)
    }
}
