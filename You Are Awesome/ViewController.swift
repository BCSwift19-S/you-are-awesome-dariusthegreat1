//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Nick Haidari on 9/8/19.
//  Copyright © 2019 Nick Haidari. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var awesomeImageView: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    var awesomePlayer = AVAudioPlayer()
    var soundIndex = -1
    var index = 0
    var imageIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int{
        var newIndex: Int
        repeat{
            newIndex = Int.random(in: 0..<maxValue)
        } while lastNumber == newIndex
        return newIndex
    }
    func playSound(soundName: String){
        
        
        var soundName = "sound\(soundIndex)"
        //try to load in sound name file
        
        if let sound = NSDataAsset(name: soundName) {
            
            //checking if sound.data is a soundfile
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            }catch{
                //if sound.data is not valid audio file,
                print("Error: data in \(soundName) couldn't be played as sound.")
            }
        } else {
            //if something didn't work, tell why
            print("ERROR: file \(soundName) didn't load")
        }
    }
    
    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You are awesome",
                        "You are Great",
                        "You are Fantastic",
                        "When the Genius Bar needs help they call you",
                        "You brighten my day",
                        "You are da bomb!",
                        "Hey, Fabulous!",
                        "You are tremendous"]
        
        //var newIndex = -1
        // declres but doesnt initialize
        
        
        
        // show a message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        //show image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImageView.image = UIImage(named: "image\(imageIndex)" )
        
        //sounds
        soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
        
        let soundName = "sound\(soundIndex)"
        playSound(soundName: soundName)
        
        //    messageLabel.text = messages[index]
        //
        //    if index == messages.count - 1{
        //        index = 0
        //    }else{
        //        index = index +1
        //    }
    }
}

