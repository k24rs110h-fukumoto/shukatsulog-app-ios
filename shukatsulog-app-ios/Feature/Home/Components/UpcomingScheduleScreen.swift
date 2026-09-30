//
//  UpcomingScheduleScreen.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/30.
//

import SwiftUI

struct UpcomingScheduleScreen: View {
    var body: some View {
        VStack {
            upcommingScheduleRow(date: Calendar.current.date(from: DateComponents(year: 2026, month: 9, day: 20, hour: 16, minute:0))!, title: "1時面接", company: "株式会社田中研究所", status: "面接待機中")
            
            Divider()
            
            upcommingScheduleRow(date: Calendar.current.date(from: DateComponents(year: 2026, month: 9, day: 20, hour: 16, minute:0))!, title: "1時面接", company: "株式会社田中研究所", status: "面接待機中")
            
            Divider()
            
            upcommingScheduleRow(date: Calendar.current.date(from: DateComponents(year: 2026, month: 9, day: 20, hour: 16, minute:0))!, title: "1時面接", company: "株式会社田中研究所", status: "面接待機中")
        }
        .padding(.horizontal, 16)
        .background(Color(Asset.Color.Background.card.color))
        .clipShape(RoundedRectangle(cornerRadius: 16))
        .padding(.horizontal, 16)
    }
    
    private func upcommingScheduleRow(date: Date, title: String, company: String, status: String) -> some View {
        HStack(alignment: .top, spacing: 16) {
            Image(uiImage: Asset.TabBar.business.image)
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
            
            VStack(alignment: .leading) {
                Text(company)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                HStack {
                    Text(date, format: .dateTime.month(.wide).day().hour().minute())
                        .foregroundStyle(.secondary)
                    
                    Spacer()
                    
                    Text(title)
                        .foregroundStyle(.secondary)
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
