//
//  Color+Asset.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/29.
//

import SwiftUI

extension Color {
    init(_ asset: ColorAsset) {
        self.init(uiColor: asset.color)
    }
}
