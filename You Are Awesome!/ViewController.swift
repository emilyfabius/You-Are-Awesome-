//
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Emily Fabius on 1/31/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var awesomeLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var messageNum = -1
    var imageNum = -1
    var totalImages = 9
    var soundNum = -1
    var totalSounds = 5
    
    var audioPlayer: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        awesomeLabel.text = ""
    }
    
    func playSound(audioName: String) {
        if let sound = NSDataAsset(name: audioName){
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("ERROR: \(error.localizedDescription) Could not initialize AVAudioPlayer object")
            }
            
        } else {
            print("ERROR: Could not read data from file sound")
        }
    }
    
    func nonRepeatingRandom(originalNum: Int, upperBounds: Int) -> Int {
        var randNum: Int
        repeat {
            randNum = Int.random(in: 0...upperBounds)
        } while originalNum == randNum
        
        return randNum
    }

    @IBAction func messageButtonPress(_ sender: UIButton) {
        let inspiringMessages = ["You are an inspiration",
                                 "You are strong",
                                 "You can do anything",
                                 "I'm proud of you",
                                 "You are coooooooooooooooooooool"]
        
        messageNum = nonRepeatingRandom(originalNum: messageNum, upperBounds: inspiringMessages.count - 1)
        awesomeLabel.text = inspiringMessages[messageNum]
        
        imageNum = nonRepeatingRandom(originalNum: imageNum, upperBounds: totalImages)
        imageView.image = UIImage(named: "image\(imageNum)")
        
        soundNum = nonRepeatingRandom(originalNum: soundNum, upperBounds: totalSounds)
        playSound(audioName: "sound\(soundNum)")
    }
}
