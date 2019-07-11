//
//  ViewController.swift
//  Emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    let emojis = ["🎷" : "Jazz", "🎤" : "Upbeat"]
    @IBAction func showMessage(sender : UIButton) {
        let selectedEmotion = sender.titleLabel?.text
        let alertController = UIAlertController(title: "No", message : ["Jazz" : "My Funny Valentine, Chet Baker", "Djangology, Djanjo Reihnhart"], preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style : UIAlertAction.Style.default, handler: nil))
        present(alertController, animated : true, completion : nil)

}
}

