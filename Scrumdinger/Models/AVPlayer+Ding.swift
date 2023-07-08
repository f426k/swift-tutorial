//
//  AVPlayer+Ding.swift
//  Scrumdinger
//
//  Created by 高嶋芙佳 on 2023/07/09.
//

import Foundation
import AVFoundation

extension AVPlayer {
    static let sharedDingPlayer: AVPlayer = {
        guard let url = Bundle.main.url(forResource: "ding", withExtension: "wav") else { fatalError("Failed to find sound file.") }
        return AVPlayer(url: url)
    }()
}
