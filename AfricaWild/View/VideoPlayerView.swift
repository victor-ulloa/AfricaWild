//
//  VideoPlayerView.swift
//  AfricaWild
//
//  Created by Victor Ulloa on 2024-03-26.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    
    var videoSelected: String
    var videoTitle: String
    
    var body: some View {
        VStack {
            if let player = player(fileName: videoSelected, fileFormat: "mp4") {
                VideoPlayer(player: player) {
                    Text(videoTitle)
                }
                .overlay(
                    Image("logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 32, height: 32)
                        .padding(.top, 6)
                        .padding(.horizontal, 8)
                    , alignment: .topLeading
                )
            }
        }
        .accentColor(.accent)
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}
