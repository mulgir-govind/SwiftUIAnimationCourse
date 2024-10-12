//
//  AudioPlayer.swift
//  SwiftUIAnimationCourse
//
//  Created by Govind on 13/10/24.
//

import Foundation
import AVFoundation

class AudioPlayer {
    static var player: AVPlayer? = {
        if let path = Bundle.main.path(forResource: "music", ofType: "m4a") {
            return AVPlayer(url: URL(fileURLWithPath: path))
        }
        return nil
    }()
    
    static func play() {
        player?.play()
    }
    
    static func pause() {
        player?.pause()
    }
}
