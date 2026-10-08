//
//  UpcomingScheduleScreen.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/30.
//

import SwiftUI

struct UpcomingScheduleListSection: View {
    var body: some View {
        VStack(spacing: 4) {
            upcommingScheduleRow(date: Calendar.current.date(from: DateComponents(year: 2026, month: 9, day: 20, hour: 16, minute:0))!, title: "1時面接", company: "株式会社田中研究所", status: "面接待機中")
            
            Divider()
            
            upcommingScheduleRow(date: Calendar.current.date(from: DateComponents(year: 2026, month: 9, day: 20, hour: 16, minute:0))!, title: "1時面接", company: "株式会社田中研究所", status: "面接待機中")
            
            Divider()
            
            upcommingScheduleRow(date: Calendar.current.date(from: DateComponents(year: 2026, month: 9, day: 20, hour: 16, minute:0))!, title: "1時面接", company: "株式会社田中研究所", status: "面接待機中")
        }
        .padding(.top, 8)
        .padding(.bottom, 8)
        .padding(.horizontal, 16)
        .background(Color(Asset.Color.Background.card.color))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
    private func upcommingScheduleRow(date: Date, title: String, company: String, status: String) -> some View {
        Button {
            
        } label: {
            HStack(alignment: .top, spacing: 16) {
                Image(systemName: "building")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .foregroundStyle(Color(Asset.Color.Brand.primary.color))
                
                VStack(alignment: .leading) {
                    Text(company)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(Asset.Color.Text.textPrimary.color))
                    
                    HStack {
                        Text(
                            date.formatted(.dateTime.locale(Locale(identifier: "ja_JP")) // TODO: 言語設定は後々修正
                                .month(.wide).day().hour().minute()))
                        .foregroundStyle(Color(Asset.Color.Text.textSecondary.color))
                        .font(.caption)
                        
                        Spacer()
                        
                        Text(title)
                            .font(.caption)
                            .foregroundStyle(Color(Asset.Color.Text.textSecondary.color))
                    }
                }
                
                Text(status)
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 6)
                    .background(.blue)
                    .clipShape(Capsule())
            }
            .padding(.vertical, 12)
        }
    }
}
