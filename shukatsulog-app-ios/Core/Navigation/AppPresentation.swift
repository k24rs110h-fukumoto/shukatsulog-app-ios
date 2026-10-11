//
//  App.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/10/08.
//

enum AppSheet: String, Identifiable {
    case quickEntry

    var id: String { rawValue }
}

enum AppFullScreen: String, Identifiable {
    case signIn

    var id: String { rawValue }
}
