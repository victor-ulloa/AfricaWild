//
//  VideoPlayerHelper.swift
//  AfricaWild
//
//  Created by Victor Ulloa on 2024-03-26.
//

import Foundation
import AVKit

var videoPlayer: AVPlayer?

func player(fileName: String, fileFormat: String, isPlayAutomatic: Bool = true) -> AVPlayer? {
    if let url = Bundle.main.url(forResource: fileName, withExtension: fileFormat) {
        videoPlayer = AVPlayer(url: url)
        if isPlayAutomatic {
            videoPlayer?.play()
        }
    }
    return videoPlayer
}
