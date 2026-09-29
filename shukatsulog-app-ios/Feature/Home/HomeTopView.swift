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
                .safeAreaInset(edge: .top) {
                    AppHeaderView()
                }
                .safeAreaInset(edge: .bottom, spacing: 0) {
                    AppTabBarView()
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
