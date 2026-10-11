//
//  WeeklyScheduleListScreen.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

import SwiftUI

struct WeeklyScheduleListSection: View {
    @Environment(HomeTopRouter.self) private var router
    
    var body: some View {
        
    }
}

private struct WeeklyScheduleListContent: View {
    @State private var viewModel: WeeklyScheduleViewModel
    
    init(router: HomeTopRouter) {
        _viewModel = State(initialValue: WeeklyScheduleViewModel(router: router))
    }
    
    var body: some View {
        /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Hello, world!@*/Text("Hello, world!")/*@END_MENU_TOKEN@*/
    }
}
