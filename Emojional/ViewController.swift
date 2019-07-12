//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var customMessages = ["Jazzy" : ["cool song1", "cool song2", "Boop jbhk", "Oh yeah"], "Upbeat" : ["doot doot", "insert good music here"]]
    var random = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let emojis = ["🎷" : "Jazzy", "🎤" : "Upbeat"]
//    var random = Int.random(in: 0...1)
    
    @IBAction func showMessage(sender : UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        
        if selectedEmotion == "🎷" {
            random = Int.random(in : 0...3)
        }else if selectedEmotion == "🎤" {
            random = Int.random(in : 0...1)
        }
        
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[random]
        let alertController = UIAlertController(title: "What's up?", message : emojiMessage , preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "Okay", style : UIAlertAction.Style.default, handler: nil))
        present(alertController, animated : true, completion : nil)

    }
    
}

