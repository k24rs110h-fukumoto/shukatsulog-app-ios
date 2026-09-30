//
//  HomeTopView.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/25.
//

import SwiftUI

struct HomeTopView: View {
    var body: some View {
        NavigationStack {
            content
                .background(Color(Asset.Color.Background.background.color))
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            
                        } label: {
                            Image(systemName: "line.3.horizontal.decrease")
                        }
                    }
                    .sharedBackgroundVisibility(.hidden)
                    
                    ToolbarItem(placement: .principal) {
                        Button {
                            
                        } label: {
                            Text("就活ログ")
                        }
                    }
                    
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "bell")
                        }
                    }
                    .sharedBackgroundVisibility(.hidden)
                }
        }
    }
    
    private var content: some View {
        ScrollView {
            TodayTask
        }
    }
    
    private var TodayTask: some View {
        VStack {
            HStack {
                Text("0:00~0:00")
                
                Spacer()
                
                
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Web面接")
                        
                        Text("株式会社田中研究所")
                    }
                    Text("〄Zoom")
                }
            }
            
        }
        .background(Color(Asset.Color.Background.card.color))
        .padding(.horizontal)
    }
}


#Preview {
    HomeTopView()
}
