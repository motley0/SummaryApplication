//
//  VideoViewController.swift
//  SummaryApplication
//
//  Created by Dmitry Shcherbakov on 25.10.2020.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {
    
    @IBAction func playPressed() {
        guard let path = Bundle.main.path(forResource: "cat_1", ofType:"mp4") else {
            return
        }
        let player = AVPlayer(url: URL(fileURLWithPath: path))
        let playerController = AVPlayerViewController()
        playerController.player = player
        present(playerController, animated: true) {
            player.play()
        }
    }
    
}
