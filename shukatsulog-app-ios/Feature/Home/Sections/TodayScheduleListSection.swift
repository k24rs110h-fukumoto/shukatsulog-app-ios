//
//  TodayTaskScreen.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/30.
//

import SwiftUI

struct TodayScheduleListSection: View {
    @Environment(HomeTopRouter.self) private var router
    
    var body: some View {
        TodayScheduleListContent(router: router)
    }
}


private struct TodayScheduleListContent: View {
    @State private var viewModel: TodayScheduleViewModel
    
    init(router: HomeTopRouter) {
        _viewModel = State(
            initialValue: TodayScheduleViewModel(router: router)
        )
    }
    
    var body: some View {
        VStack(spacing: 8) {
            todayTaskRow(time: "10:00~11:00", title: "Web面接", compony: "田中研究所")
            
            Divider()
            
            todayTaskRow(time: "10:00~11:00", title: "Web面接", compony: "田中研究所")
            
            Divider()
            
            todayTaskRow(time: "10:00~11:00", title: "Web面接", compony: "田中研究所")
            
            HStack(spacing: 16) {
                Button {
                    
                } label: {
                    Image(systemName: "ellipsis.circle")
                        .font(.system(size: 32, weight: .light))
                        .foregroundStyle(Color(Asset.Color.Text.textSecondary.color))
                }
                
                Button {
                    viewModel.didTapAddTodaySchedule()
                } label: {
                    Image(systemName: "plus.circle")
                        .font(.system(size: 32, weight: .light))
                        .foregroundStyle(Color(Asset.Color.Text.textSecondary.color))
                }
            }
        }
        .padding(.top, 12)
        .padding(.bottom, 8)
        .padding(.horizontal, 16)
        .background(Color(Asset.Color.Background.card.color))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
    private func todayTaskRow(time: String, title: String, compony: String) -> some View {
        Button {
            viewModel.didTapTodaySchedule()
        } label: {
            HStack(alignment: .top) {
                Text(time)
                    .font(.caption)
                    .fontWeight(.medium)
                    .monospacedDigit()
                    .foregroundStyle(Color(Asset.Color.Text.textPrimary.color))
                    .frame(width: 85, alignment: .leading)
                
                VStack {
                    Circle()
                        .frame(width: 24, height: 24)
                        .foregroundStyle(Color(Asset.Color.Brand.primary.color))
                }
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(title)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color(Asset.Color.Text.textPrimary.color))
                        
                        Text(compony)
                            .font(.caption)
                            .foregroundStyle(Color(Asset.Color.Text.textSecondary.color))
                            .lineLimit(1)
                    }
                    
                    HStack {
                        Image(systemName: "video.fill")
                            .font(.caption)
                            .foregroundStyle(Color(Asset.Color.Text.textSecondary.color))
                        
                        Text("Zoom")
                            .font(.caption)
                            .foregroundStyle(Color(Asset.Color.Text.textSecondary.color))
                    }
                    .foregroundStyle(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                VStack {
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .font(.caption)
                        .foregroundStyle(Color(Asset.Color.Text.textSecondary.color))
                    
                    Spacer()
                }
            }
        }
    }
}


