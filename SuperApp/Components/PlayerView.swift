//
//  VideoPlayerView.swift
//  SuperApp
//
//  Created by Anton Hoang on 04/04/2024.
//  Copyright © 2024 碼願科技有限公司. All rights reserved.

import SwiftUI
import AVKit

struct PlayerView: View {
    let video: VideoName
    @State private var player = AVPlayer()

    var body: some View {
        VideoPlayer(player: player)
            .onAppear() {
                player = AVPlayer(url: video.url)
                player.play()
            }
            .aspectRatio(contentMode: .fill)
            .frame(height: UIScreen.main.bounds.height)
    }
}
