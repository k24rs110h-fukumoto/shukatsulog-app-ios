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
                            Text("ホーム")
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
            
        }
    }
    
    private var TodayTask: some View {
        VStack {
            
        }
    }
}


#Preview {
    HomeTopView()
}
