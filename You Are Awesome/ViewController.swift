//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Nick Haidari on 9/8/19.
//  Copyright © 2019 Nick Haidari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    var index = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        messageLabel.text = messages.randomElement()!
        
    }
    
//    messageLabel.text = messages[index]
//
//    if index == messages.count - 1{
//        index = 0
//    }else{
//        index = index +1
//    }

}

