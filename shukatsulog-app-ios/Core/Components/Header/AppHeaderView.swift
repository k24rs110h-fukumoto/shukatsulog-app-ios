//
//  HeaderView.swift
//  shukatsulog-app-ios
//
//  Created by Haruto Fukumoto on 2026/09/29.
//

import SwiftUI

struct AppHeaderView: View {
    var body: some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "line.3.horizontal")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(Asset.Core.appTitle)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "bell")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
            }
        }
        .padding(.horizontal, 24)
        .padding(.bottom, 10)
        .background(.background)
        
    }
}
