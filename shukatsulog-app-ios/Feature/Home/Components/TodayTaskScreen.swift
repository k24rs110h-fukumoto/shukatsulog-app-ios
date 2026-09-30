//
//  TodayTaskScreen.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/30.
//

import SwiftUI

struct TodayTaskScreen: View {
    var body: some View {
        VStack {
            todayTaskRow(time: "10:00~11:00", title: "Web面接", compony: "田中研究所")
            
            Divider()
            
            todayTaskRow(time: "10:00~11:00", title: "Web面接", compony: "田中研究所")
            
            Divider()
            
            todayTaskRow(time: "10:00~11:00", title: "Web面接", compony: "田中研究所")
        }
        .padding(.horizontal, 16)
        .background(Color(Asset.Color.Background.card.color))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 16)
        
    }
    
    private func todayTaskRow(time: String, title: String, compony: String) -> some View {
        HStack(alignment: .top) {
            Text(time)
                .font(.caption)
                .fontWeight(.medium)
                .monospacedDigit()
                .frame(width: 85, alignment: .leading)
            
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Text(title)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    
                    Text(compony)
                        .font(.caption)
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                }
                
                HStack {
                    Image(systemName: "video.fill")
                        .font(.caption)
                    
                    Text("Zoom")
                        .font(.caption)
                }
                .foregroundStyle(.secondary)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.vertical, 12)
    }
}

