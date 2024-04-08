//
//  ViewController.swift
//  musica
//
//  Created by Mac Students on 15.12.2023.
//
import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBAction func start(_ sender: Any) {
        if !audioPlayer.isPlaying {
            audioPlayer.play()
            startstopButton.setTitle("Stop", for: UIControl.State.normal)
            startstopButton.tintColor = .gray
        } else {
            audioPlayer.stop()
            startstopButton.setTitle("Play", for: UIControl.State.normal)
            startstopButton.tintColor = .orange
        }
    }
    
    var audioPlayer = AVAudioPlayer()
    
    @IBOutlet weak var startstopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startstopButton.setTitle("Play", for: UIControl.State.normal)
        startstopButton.tintColor = .orange
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "soojin-agassy-mp3", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        } catch {
            
        }
    }
    
    
}
