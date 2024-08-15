//
//  ContentView.swift
//  SuperApp
//
//  Created by Anton Hoang on 03/04/2024.
//  Copyright © 2024 碼願科技有限公司. All rights reserved.

import SwiftUI
import Foundation

struct ContentView: View {

    let videos: [VideoName] = [.capitol, .climbing, .dance, .karate, .skating, .smoke]

    var body: some View {
        ZStack {
            Color.black
            ScrollView {
                VStack(spacing: 0) {
                    ForEach(videos) { video in
                        ZStack {
                            PlayerView(video: video)
                        }
                    }
                }
            }
            .scrollTargetBehavior(.paging)
        }
        .ignoresSafeArea()
    }

}

#Preview {
    ContentView()
}



