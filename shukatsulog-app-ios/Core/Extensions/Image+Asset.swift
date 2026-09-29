//
//  Image+Assets.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/29.
//

import SwiftUI

extension Image {
    init(_ asset: ImageAsset) {
        self.init(uiImage: asset.image)
    }
}
